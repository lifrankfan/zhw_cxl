// Example instance of the top level module for: 
//     zfp_1d_1block
// To include this component in your design, include: 
//     zfp_1d_1block.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

zfp_1d_1block zfp_1d_1block_inst (
  // Interface: clock (clock end)
  .clock           ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn          ( ), // 1-bit reset_n input
  // Interface: in_stream (avalon_streaming sink)
  .in_stream_data  ( ), // 64-bit data input
  .in_stream_ready ( ), // 1-bit ready output
  .in_stream_valid ( ), // 1-bit valid input
  // Interface: out_stream (avalon_streaming source)
  .out_stream_data ( ), // 64-bit data output
  .out_stream_ready( ), // 1-bit ready input
  .out_stream_valid( ), // 1-bit valid output
  // Interface: call (conduit sink)
  .start           ( ), // 1-bit valid input
  .busy            ( ), // 1-bit stall output
  // Interface: return (conduit source)
  .done            ( ), // 1-bit valid output
  .stall           ( )  // 1-bit stall input
);
