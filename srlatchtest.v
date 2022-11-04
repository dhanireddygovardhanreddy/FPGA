// Stimulus module 

// Module name and port list is not present 

module Top; 

// Declarations of wire, reg, and other variables 

wire q, qbar; 

reg set, reset; 

// Instantiate lower-level modules 

// In this case, instantiate SR_latch 

// Feed inverted set and reset signals to the SR latch 

SR_latch m1(q, qbar, ~set, ~reset); 