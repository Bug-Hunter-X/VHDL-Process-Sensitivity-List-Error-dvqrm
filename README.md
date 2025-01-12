# VHDL Process Sensitivity List Bug
This repository demonstrates a common error in VHDL: an incomplete sensitivity list in a process.  The `bad_process.vhdl` file contains a process that only reacts to clock changes (`clk`), ignoring changes in the input data (`data_in`). This can lead to unexpected behavior and incorrect output.

The solution, `good_process.vhdl`, shows the corrected code with `data_in` added to the sensitivity list, ensuring proper updates when the input changes.

## How to Reproduce
1.  Compile and simulate `bad_process.vhdl`. Observe that `data_out` only updates when `clk` changes, even if `data_in` changes.
2.  Compile and simulate `good_process.vhdl`. Observe that `data_out` correctly updates whenever `data_in` changes, regardless of `clk` changes.

## Conclusion
Always carefully review and check the sensitivity list of your VHDL processes to prevent unexpected behavior and ensure your design's correctness.  Missing signals from the sensitivity list is a common source of subtle bugs.