// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary model header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef VERILATED_VCO_SIM_ACCUM_20LSB_INPUT_TO_MULLTIPLIER_DSP19X2_H_
#define VERILATED_VCO_SIM_ACCUM_20LSB_INPUT_TO_MULLTIPLIER_DSP19X2_H_  // guard

#include "verilated.h"

class Vco_sim_accum_20lsb_input_to_mulltiplier_dsp19x2__Syms;
class Vco_sim_accum_20lsb_input_to_mulltiplier_dsp19x2___024root;
class VerilatedFstC;

// This class is the main interface to the Verilated model
class alignas(VL_CACHE_LINE_BYTES) Vco_sim_accum_20lsb_input_to_mulltiplier_dsp19x2 VL_NOT_FINAL : public VerilatedModel {
  private:
    // Symbol table holding complete model state (owned by this class)
    Vco_sim_accum_20lsb_input_to_mulltiplier_dsp19x2__Syms* const vlSymsp;

  public:

    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.

    // CELLS
    // Public to allow access to /* verilator public */ items.
    // Otherwise the application code can consider these internals.

    // Root instance pointer to allow access to model internals,
    // including inlined /* verilator public_flat_* */ items.
    Vco_sim_accum_20lsb_input_to_mulltiplier_dsp19x2___024root* const rootp;

    // CONSTRUCTORS
    /// Construct the model; called by application code
    /// If contextp is null, then the model will use the default global context
    /// If name is "", then makes a wrapper with a
    /// single model invisible with respect to DPI scope names.
    explicit Vco_sim_accum_20lsb_input_to_mulltiplier_dsp19x2(VerilatedContext* contextp, const char* name = "TOP");
    explicit Vco_sim_accum_20lsb_input_to_mulltiplier_dsp19x2(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    virtual ~Vco_sim_accum_20lsb_input_to_mulltiplier_dsp19x2();
  private:
    VL_UNCOPYABLE(Vco_sim_accum_20lsb_input_to_mulltiplier_dsp19x2);  ///< Copying not allowed

  public:
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval() { eval_step(); eval_end_step(); }
    /// Evaluate when calling multiple units/models per time step.
    void eval_step();
    /// Evaluate at end of a timestep for tracing, when using eval_step().
    /// Application must call after all eval() and before time changes.
    void eval_end_step();
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    /// Are there scheduled events to handle?
    bool eventsPending();
    /// Returns time at next time slot. Aborts if !eventsPending()
    uint64_t nextTimeSlot();
    /// Trace signals in the model; called by application code
    void trace(VerilatedFstC* tfp, int levels, int options = 0);
    /// Retrieve name of this model instance (as passed to constructor).
    const char* name() const;

    // Abstract methods from VerilatedModel
    const char* hierName() const override final;
    const char* modelName() const override final;
    unsigned threads() const override final;
    std::unique_ptr<VerilatedTraceConfig> traceConfig() const override final;
};

#endif  // guard
