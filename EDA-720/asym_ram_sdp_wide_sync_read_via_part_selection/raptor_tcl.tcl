create_design asym_ram_sdp_wide_sync_read_via_part_selection
target_device GEMINI
add_include_path ./rtl
add_library_path ./rtl
add_library_ext .v .sv
add_design_file ./rtl/asym_ram_sdp_wide_sync_read_via_part_selection.v
set_top_module asym_ram_sdp_wide_sync_read_via_part_selection
synthesize delay
