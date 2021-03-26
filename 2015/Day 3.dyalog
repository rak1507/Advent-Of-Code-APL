data←⊃⊃⎕NGET'Day 3.txt'1

⍝ Part 1
≢∪+\0,0J1*'>^<v'⍳data

⍝ Part 2
≢∪∊+⍀0⍪0J1*'>^<v'⍳data⍴⍨2,⍨2÷⍨≢data
