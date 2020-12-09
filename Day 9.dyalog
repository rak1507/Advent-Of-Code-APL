data←⍎¨⊃⎕NGET 'Day 9.txt' 1

⍝ Part 1
⊢p1 ← ∊{(⊃⍵)/⍨~(⊃⍵)∊,∘.+⍨1↓⍵}¨ ¯26,/data

⍝ Part 2
s e←⊃⍸p1=∘.-⍨+\data ⋄ (⌈/+⌊/)e↓s↑data
