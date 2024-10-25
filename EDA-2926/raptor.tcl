create_design dsp_AB_36x36_Pipeline
target_device 1VG28
configure_ip dsp_generator_v1_0 -mod_name dsp_AB_36x36_Pipeline -Pa_width=36 -Pb_width=36 -Pfeature=Pipeline -out_file ./dsp_AB_36x36_Pipeline/run_1/IPs/dsp_AB_36x36_Pipeline
ipgenerate
add_library_path ./dsp_AB_36x36_Pipeline/run_1/IPs/rapidsilicon/ip/dsp_generator/v1_0/dsp_AB_36x36_Pipeline/src/
add_design_file ./dsp_AB_36x36_Pipeline/run_1/IPs/rapidsilicon/ip/dsp_generator/v1_0/dsp_AB_36x36_Pipeline/src/dsp_AB_36x36_Pipeline\_v1_0.v
set_top_module dsp_AB_36x36_Pipeline
add_simulation_file /nfs_scratch/scratch/CGA/repo/2024-05-29-23-48-48_T11080R122/Validation/RTL_testcases/IP_Catalog_Designs/dsp_generator_AB_36x36_pipeline/results_dir/dsp_AB_36x36_Pipeline/run_1/IPs/rapidsilicon/ip/dsp_generator/v1_0/dsp_AB_36x36_Pipeline/sim/dsp_test.v
analyze
simulate_ip dsp_AB_36x36_Pipeline
synth_options -new_tdp36k 
synthesize delay
simulation_options compilation icarus gate
simulate gate icarus