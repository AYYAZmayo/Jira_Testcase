create_design simple_testcase_with_neg_constant
target_device 1GVTC
add_design_file ./rtl/simple_testcase_with_neg_constant.v
set_top_module simple_testcase_with_neg_constant
analyze
synthesize delay