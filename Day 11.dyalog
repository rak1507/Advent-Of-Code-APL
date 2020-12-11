a←↑⊃⎕NGET'Day 11.txt' 1
s←'.'≠a

⍝ Part 1
+/,{s∧⊃1 ⍵∨.∧1 5∘.>⊂{+/,⍵}⌺3 3⊢⍵}⍣≡'#'=a

⍝ Part 2
⍝ todo
