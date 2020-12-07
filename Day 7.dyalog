text←⊃⎕NGET 'Day 7.txt' 1
bags←⊃¨'\w+ \w+'⎕S'&'¨text
contained←{no←0 ⋄ ⌽↓⍉↑⍎¨'(\d+|no) (\w+ \w+|other) bag'⎕S'\1,⊂''\2'''⊢⍵}¨text

⍝ Part 1
f←∊¨∘(⊃¨contained)
1-⍨≢{∪⍵,⊃,/{bags[⍸f⊂⊂⍵]}¨⍵}⍣≡⊂'shiny gold'

⍝ Part 2
1-⍨1{⍺=0:0 ⋄ ⍺+⍺×+/∇⍨⌿↑⊃contained⌷⍨bags⍳⊂⍵}'shiny gold'
