⎕IO←0
data ← ↑⊃⎕NGET 'Day 3.txt' 1
trav ← {+/'#'=⍵[↓⍉(⊃⌽⍴⍵)|@1⊢⍺×⍤0 1⊢⍳⌊(⊃⍺)÷⍨≢⍵]}

⍝ Part 1
1 3 trav data

⍝ Part 2
×/trav∘data¨(1 1)(1 3)(1 5)(1 7)(2 1)
