# Verilated -*- Makefile -*-
# DESCRIPTION: Verilator output: Makefile for building Verilated archive or executable
#
# Execute this makefile from the object directory:
#    make -f Vpost_pnr_wrapper_lut_ff_mux_post_synth.mk

default: Vpost_pnr_wrapper_lut_ff_mux_post_synth

### Constants...
# Perl executable (from $PERL)
PERL = perl
# Path to Verilator kit (from $VERILATOR_ROOT)
VERILATOR_ROOT = /nfs_eda_sw/softwares/Raptor/instl_dir/03_20_2024_09_15_01/bin/HDL_simulator/verilator/share/verilator
# SystemC include directory with systemc.h (from $SYSTEMC_INCLUDE)
SYSTEMC_INCLUDE ?= /nfs_eda_sw/softwares/Raptor/instl_dir/latest/bin/HDL_simulator/systemc_2.3.3/include
# SystemC library directory with libsystemc.a (from $SYSTEMC_LIBDIR)
SYSTEMC_LIBDIR ?= /nfs_eda_sw/softwares/Raptor/instl_dir/latest/bin/HDL_simulator/systemc_2.3.3/lib-linux64

### Switches...
# C++ code coverage  0/1 (from --prof-c)
VM_PROFC = 0
# SystemC output mode?  0/1 (from --sc)
VM_SC = 0
# Legacy or SystemC output mode?  0/1 (from --sc)
VM_SP_OR_SC = $(VM_SC)
# Deprecated
VM_PCLI = 1
# Deprecated: SystemC architecture to find link library path (from $SYSTEMC_ARCH)
VM_SC_TARGET_ARCH = linux

### Vars...
# Design prefix (from --prefix)
VM_PREFIX = Vpost_pnr_wrapper_lut_ff_mux_post_synth
# Module prefix (from --prefix)
VM_MODPREFIX = Vpost_pnr_wrapper_lut_ff_mux_post_synth
# User CFLAGS (from -CFLAGS on Verilator command line)
VM_USER_CFLAGS = \
	-DVL_TIME_CONTEXT \

# User LDLIBS (from -LDFLAGS on Verilator command line)
VM_USER_LDLIBS = \
	-lz \

# User .cpp files (from .cpp's on Verilator command line)
VM_USER_CLASSES = \

# User .cpp directories (from .cpp's on Verilator command line)
VM_USER_DIR = \


### Default rules...
# Include list of all generated classes
include Vpost_pnr_wrapper_lut_ff_mux_post_synth_classes.mk
# Include global rules
include $(VERILATOR_ROOT)/include/verilated.mk

### Executable rules... (from --exe)
VPATH += $(VM_USER_DIR)


### Link rules... (from --exe)
Vpost_pnr_wrapper_lut_ff_mux_post_synth: $(VK_USER_OBJS) $(VK_GLOBAL_OBJS) $(VM_PREFIX)__ALL.a $(VM_HIER_LIBS)
	$(LINK) $(LDFLAGS) $^ $(LOADLIBES) $(LDLIBS) $(LIBS) $(SC_LIBS) -o $@


# Verilated -*- Makefile -*-