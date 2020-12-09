data←⍎¨⊃⎕NGET 'Day 9.txt' 1

⍝ Part 1
⊢p1←data⊃⍨25+⍸{~(⊃⍵)∊∘.+⍨1↓⍵}¨¯26,/data

⍝ Part 2
s e←⊃⍸p1=∘.-⍨0,+\data ⋄ (⌈/+⌊/)e↓s↑data
