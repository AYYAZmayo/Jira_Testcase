import sys
import os
import re

def inc_upate(fabric_netlist_path,prefix,a):
    with open(fabric_netlist_path, 'r') as file:
        file_content = file.readlines()

    # Process each line
    for i in range(len(file_content)):
        if a in file_content[i]:
            fabric_netlist_cont = file_content[i].split('"')[1]
            new_fabric_netlist_path = os.path.join(prefix, fabric_netlist_cont)
            file_content[i] = a+'{}"\n'.format(new_fabric_netlist_path)

    with open(fabric_netlist_path, 'w') as file:
        file.writelines(file_content)

    print("File updated successfully.")

def insert_after_fpga_defines(file_path, new_content):
    try:
        with open(file_path, 'r') as file:
            lines = file.readlines()

        fpga_defines_index = -1
        for i, line in enumerate(lines):
            if 'fpga_defines' in line:
                fpga_defines_index = i
                break

        if fpga_defines_index != -1:
            lines.insert(fpga_defines_index + 1, new_content + '\n')

            with open(file_path, 'w') as file:
                file.writelines(lines)

            print("New content inserted after 'fpga_defines'.")
        else:
            print("No 'fpga_defines' found in the file.")

    except FileNotFoundError:
        print(f"File '{file_path}' not found.")

def rename_p(file_path,prefix_to_remove,change):

    with open(file_path, 'r') as file:
        file_content = file.readlines()

    for i in range(len(file_content)):
        if prefix_to_remove in file_content[i]:
            file_content[i] = file_content[i].replace(prefix_to_remove, change)

    with open(file_path, 'w') as file:
        file.writelines(file_content)

    print("File updated successfully.")

def remove_iopadmap(file_path):
    try:
        with open(file_path, 'r') as file:
            lines = file.readlines()

        with open(file_path, 'w') as file:
            for line in lines:
                modified_line = line.replace("$iopadmap$", "")
                file.write(modified_line)

        print("'$iopadmap$' removed from lines in the file.")
    except FileNotFoundError:
        print(f"File '{file_path}' not found.")
    
    # comment the always block
    with open(file_path, 'r') as file:
        lines = file.readlines()

    always_line = None
    end_line = None

    always_found = False

    for i, line in enumerate(lines, start=1):
        if not always_found and 'always@(negedge' in line:
            always_found = True
            always_line=i
        elif always_found:
            if 'end' in line:
                end_line=i
                break

    if always_line is not None and end_line is not None:
        for i in range(always_line - 1, end_line):
            lines[i] = "//" + lines[i]

    initial_line = None
    initial_end_line = None

    initial_found = False

    for i, line in enumerate(lines, start=1):
        if not initial_found and '----- Input Initialization -------' in line:
            initial_found = True
            initial_line=i
        elif initial_found:
            if 'end' in line:
                initial_end_line=i
                break

    if initial_line is not None and initial_end_line is not None:
        for i in range(initial_line - 1, initial_end_line):
            lines[i] = "//" + lines[i]

    with open(file_path, 'w') as file:
        file.writelines(lines)
    
def adjust_ios(file_path):

    with open(file_path, 'r') as file:
        content = file.read()

    pattern = r'(\w+)\s*\[\s*0\s*:\s*0\s*\]\s*(\w+)\[(\d+)\]([;,)])'

    matches = list(re.finditer(pattern, content))

    if matches:
        for i in range(len(matches)):
            last_match = matches[i]
            signal = last_match.group(1)
            variable_name = last_match.group(2)
            array_size = last_match.group(3)
            last_charater = last_match.group(4)

            if i < len(matches) - 1:
                next_match = matches[i + 1]
                variable_name_next = next_match.group(2)
            else:
                variable_name_next = None

            if variable_name_next == variable_name:
                content = content.replace(last_match.group(0), f'// {last_match.group(0)}')
            else:
                content = content.replace(f'{signal} [0:0] {variable_name}[{array_size}]{last_charater}',f'{signal} [{array_size}:0] {variable_name}{last_charater}')

        with open(file_path, 'w') as file:
            file.write(content)
        print("File updated successfully.")
    else:
        print("Pattern not found in the file.")
    
    with open(file_path, 'r') as file:
        content = file.read()

    pattern2 = r'\t*(\w+)\s+\[(\d+):(\d+)\]\s+(\w+)\[(\d+)\](\w+);'

    matches2 = list(re.finditer(pattern2, content))

    if matches2:
        for i in range(len(matches2)):
            last_match_gfpga = matches2[i]
            signal = last_match_gfpga.group(1)
            variable_name = last_match_gfpga.group(4)
            array_size = last_match_gfpga.group(5)
            last_charater = last_match_gfpga.group(6)

            if i < len(matches2) - 1:
                next_match = matches2[i + 1]
                variable_name_next = next_match.group(4)
            else:
                variable_name_next = None

            if variable_name_next == variable_name:
                content = content.replace(last_match_gfpga.group(0), f'// {last_match_gfpga.group(0)}')
                # content = content.replace(last_match_gfpga.group(0), f'// {last_match_gfpga.group(0).strip()}')
            else:
                content = content.replace(f'{signal} [0:0] {variable_name}[{array_size}]{last_charater};',f'{signal} [{array_size}:0] {variable_name}{last_charater};')

        with open(file_path, 'w') as file:
            file.write(content)
        print("File updated successfully.")
    else:
        print("Pattern not found in the file.")

def instance_update(file_path):
    def modify_variable_line(match):
        variable_name = match.group(1)
        array_size = match.group(2)
        endvar = match.group(3)
        if any(match.group(0) == entry.group(0) for entry in last_occurrences):
            return f'\t{variable_name}{endvar}'
        else:
            return f'// \t{variable_name}[{array_size}]{endvar}'

    with open(file_path, 'r') as file:
        content = file.read()

    pattern = r'\t*(\w+)\[(\d+)\]([,\n])'

    matches = list(re.finditer(pattern, content))
    last_occurrences = []

    for match in matches:
        variable_name = match.group(1)
        found = False
        for i, entry in enumerate(last_occurrences):
            if entry.group(1) == variable_name:
                last_occurrences[i] = match
                found = True
                break
        if not found:
            last_occurrences.append(match)
    modified_content = re.sub(pattern, modify_variable_line, content)

    with open(file_path, 'w') as file:
        file.write(modified_content)

    
    def modify_variable_line(match):
        variable_name = match.group(1)
        array_size = match.group(2)
        variable_last_name = match.group(3)
        endvar = match.group(4)
        if any(match.group(0) == entry.group(0) for entry in last_occurrences):
            return f'\t{variable_name}{variable_last_name}{endvar}'
        else:
            return f'// \t{variable_name}[{array_size}]{variable_last_name}{endvar}'

    with open(file_path, 'r') as file:
        content = file.read()

    pattern = r'\t*(\w+)\[(\d+)\](\w+)([,\n])'

    matches = list(re.finditer(pattern, content))
    last_occurrences = []

    for match in matches:
        variable_name = match.group(1)
        found = False
        for i, entry in enumerate(last_occurrences):
            if entry.group(1) == variable_name:
                last_occurrences[i] = match
                found = True
                break
        if not found:
            last_occurrences.append(match)
    modified_content = re.sub(pattern, modify_variable_line, content)

    with open(file_path, 'w') as file:
        file.write(modified_content)

def remove_twodim_array(file_path):

    with open(file_path, 'r') as file:
        content = file.read()

    pattern = r'(\w+)\s(\w+)\[(\d+)\]\s*=\s*(\w+)\[(\d+)\]\[(\d+)\];'

    matches = list(re.finditer(pattern, content))

    if matches:
        for i in range(len(matches)):
            all_matches = matches[i]
            assign = all_matches.group(1)
            pin_name = all_matches.group(2)
            pin_number = all_matches.group(3)
            input = all_matches.group(4)
            input_width = all_matches.group(5)
            two_dm_width = all_matches.group(6)
            content = content.replace(f'{assign} {pin_name}[{pin_number}] = {input}[{input_width}][{two_dm_width}];', f'{assign} {pin_name}[{pin_number}] = {input}[{input_width}];')

    pattern = r'(\w+)\s(\w+)\[(\d+)\]\[(\d+)\]\s*=\s*(\w+)\[(\d+)\];'

    matches = list(re.finditer(pattern, content))

    if matches:
        for i in range(len(matches)):
            all_matches = matches[i]
            assign = all_matches.group(1)
            input = all_matches.group(2)
            input_width = all_matches.group(3)
            two_dm_width = all_matches.group(4)
            pin_name = all_matches.group(5)
            pin_number = all_matches.group(6)
            content = content.replace(f'{assign} {input}[{input_width}][{two_dm_width}] = {pin_name}[{pin_number}];', f'{assign} {input}[{input_width}] = {pin_name}[{pin_number}];')

    with open(file_path, 'w') as file:
        file.write(content)

def insert_new_lines(file_path,line,new_line):
    with open(file_path, 'r') as file:
        file_content = file.readlines()

    try:
        index = file_content.index(line)
        file_content.insert(index + 1, new_line)
    except ValueError:
        print("Line not found in the file.")

    with open(file_path, 'w') as file:
        file.writelines(file_content)

    print("File updated successfully.")

def copy_tasks(file_path,task_path,insert_string):
    # task_path="../sim/bitstream_tb/bitstream_testbech_tasks.v"
    # insert_string="----- END output waveform to VCD file -------"
    if os.path.exists(task_path):
        print(f"The file bitstream_testbech_tasks.v exists.")    
        try:
            with open(task_path, 'r') as src_file:
                source_content = src_file.read()

            with open(file_path, 'r') as dest_file:
                dest_content = dest_file.read()

            insert_index = dest_content.find(insert_string)

            if insert_index != -1:
                new_content = dest_content[:insert_index + len(insert_string)] + '\n' + source_content + '\n' + dest_content[insert_index + len(insert_string):]

                with open(file_path, 'w') as dest_file:
                    dest_file.write(new_content)

                print("Content inserted successfully.")
            else:
                print("Insert string not found in the destination file.")

        except FileNotFoundError:
            print("One or both of the specified files does not exist.")
    else:
        print(f"The file bitstream_testbech_tasks.v does not exist.")

def clk_update(file_path):
    pattern = r'\$auto\$clkbufmap\.cc:\d+:execute\$\d+'

    replacement = 'clock0'

    with open(file_path, 'r') as f:
        content = f.read()

    new_content = re.sub(pattern, replacement, content)

    with open(file_path, 'w') as f:
            f.write(new_content)

def replacement(file_path,pattern,replacement):

    with open(file_path, 'r') as f:
        content = f.read()

    match = re.search(pattern, content)

    if match:
        print("Pattern found:", match.group())
    else:
        print("Pattern not found in the file.")

    new_content = re.sub(pattern, replacement, content)

    with open(file_path, 'w') as f:
        f.write(new_content)


def replace_pattern_in_file(file_path, pattern, replacement):

    modified_pattern = pattern.replace("$", r"\$")

    with open(file_path, 'r') as f:
        content = f.read()

    content = re.sub(modified_pattern, replacement, content)

    with open(file_path, 'w') as f:
        f.write(content)

def multiclock_update(file_path,number_of_clocks):
    match=[]
    pattern = r'\$auto\$clkbufmap\.cc:\d+:execute\$\d+'

    with open(file_path, 'r') as f:
        content = f.read()

    matches = re.findall(pattern, content)

    if matches:
        print("Patterns found:")
        for i in matches:
            match.append(i)
    else:
        print("Pattern not found in the file.")

    for i in range(number_of_clocks):
            replace_pattern_in_file(file_path,match[i],"clock"+str(i))

def main():
    file_path = sys.argv[1]
    design_name=sys.argv[2]

    if file_path.endswith("fabric_"+design_name+"_formal_random_top_tb.v"):
        remove_iopadmap(file_path)
        adjust_ios(file_path)
        instance_update(file_path)
        copy_tasks(file_path,"../sim/bitstream_tb/bitstream_testbench.v","----- Can be changed by the user for his/her need -------")
        copy_tasks(file_path,"../sim/bitstream_tb/bitstream_testbech_tasks.v","----- END output waveform to VCD file -------")
        clk_update(file_path)
    elif file_path.endswith("fabric_"+design_name+"_top_formal_verification.v"):
        remove_iopadmap(file_path)
        adjust_ios(file_path)
        remove_twodim_array(file_path)
        if design_name != "up5bit_counter_dual_clock":
            clk_update(file_path)
        else:
            if int(sys.argv[3]) > 1:
                multiclock_update(file_path,int(sys.argv[3]))
        if design_name in ["shift_register", "dffre_inst", "lut_ff_mux", "sp_ram", "up5bit_counter"]:
            replacement(file_path,"clk_fm\[15\] = 1\'b0","clk_fm[15] = clock0")
            replacement(file_path,"global_resetn_fm\[0\] = 1'b0","global_resetn_fm[0] = 1'b1")
    elif file_path.endswith("fabric_netlists.v"):
        inc_upate(file_path,"BIT_SIM/","`include \"")
        rename_p(file_path,"BIT_SIM/./SRC/","SRC/")
        rename_p(file_path,"`include \"SRC/sc_verilog","// `include \"SRC/sc_verilog")
        rename_p(file_path,"rs_dsp.v","QL_DSP.v")
        rename_p(file_path,"rs_bram.v","QL_BRAM.v")
        insert_new_lines(file_path,"`include \"SRC/CustomModules/rs_ccff.v\"\n","`include \"SRC/CustomModules/ql_ioff.v\"\n")
        insert_new_lines(file_path,"`include \"SRC/CustomModules/ql_ioff.v\"\n","`include \"SRC/CustomModules/QL_IOFF_dti.v\"\n")
        insert_new_lines(file_path,"`include \"SRC/CustomModules/QL_IOFF_dti.v\"\n","`include \"SRC/CustomModules/QL_XOR_MUX2_dti.v\"\n")
        insert_new_lines(file_path,"`include \"SRC/CustomModules/ql_preio.v\"\n","`include \"SRC/CustomModules/RS_CCFF_dti.v\"\n")
        insert_new_lines(file_path,"`include \"SRC/CustomModules/gc_ff.v\"\n","`include \"SRC/CustomModules/ql_dsp_dti.v\"\n")
        insert_new_lines(file_path,"`include \"SRC/CustomModules/gc_ffn.v\"\n","`include \"SRC/CustomModules/QL_TDP36K_dti.v\"\n")

        new_content = '`include "SRC/CustomModules/bram/rtl/dti_dp_tm16ffcll_1024x18_t8bw2x_m_hc.v"\n\n`include "/cadlib/gemini/TSMC16NMFFC/library/std_cells/dti/7p5t/rev_220704/220704_dti_tm16ffc_90c_7p5t_stdcells_rev1p0p1_rapid_fe_views_svt/220704_dti_tm16ffc_90c_7p5t_stdcells_rev1p0p1_rapid/verilog/dti_tm16ffc_90c_7p5t_stdcells_rev1p0p0.v"\n`include "/cadlib/virgo/TSMC16NMFFC/library/std_cells/dti/7p5t/rev_181022/221018_dti_tm16ffc_90c_7p5t_stdcells_rev1p0p8_rapid_fe_views_lvt/221018_dti_tm16ffc_90c_7p5t_stdcells_rev1p0p8_rapid/verilog_lvt/dti_tm16ffc_lvt_90c_7p5t_stdcells_rev1p0p0.v"\n`include "/cadlib/virgo/TSMC16NMFFC/library/std_cells/dti/7p5t/rev_181022/221018_dti_tm16ffc_90c_7p5t_stdcells_rev1p0p8_rapid_fe_views_hvt/221018_dti_tm16ffc_90c_7p5t_stdcells_rev1p0p8_rapid/verilog_hvt/dti_tm16ffc_hvt_90c_7p5t_stdcells_rev1p0p0.v"'
        insert_after_fpga_defines(file_path, new_content)

if __name__ == "__main__":
    main()
