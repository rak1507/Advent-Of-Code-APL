data ← 2⊥'BR'∊⍨⍉↑⊃⎕NGET 'Day 5.txt' 1

⍝ Part 1
⌈/ data

⍝ Part 2
(⊢~⍨⌊/+1-⍨⍳∘(1+⌈/-⌊/)) data
