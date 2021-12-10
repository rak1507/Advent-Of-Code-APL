(⊢×⍥(2⊥⊢)~)(≢>2×+⌿)data←⍎¨↑⊃⎕NGET'Day 3.txt'1 ⍝ part 1
find←{x←0⋄⍺⍺{⍵⌿⍨(⊢=≢⍺⍺2×+⌿)x⌷⍉⍵}⍣{1≡≢⍺⊣x+←1}⍵}
×/2⊥⍉(>find⍪≤find)data ⍝ part 2
