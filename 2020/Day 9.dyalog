data←⍎¨⊃⎕NGET 'Day 9.txt' 1

⍝ Part 1
⊢p1←data⊃⍨25+⍸{~(⊃⍵)∊∘.+⍨1↓⍵}¨¯26,/data

⍝ Part 2
e s←⊃⍸p1=∘.-⍨+\data ⋄ (⌈/+⌊/)s↓e↑data
