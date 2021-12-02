⍝ using eval (⍎)
h d←0⋄forward←{h+←⍵}⋄down←{d+←⍵}⋄up←{d-←⍵}⋄⍎¨data←⊃⎕NGET'Day 2.txt'1⋄h×d
h d a←0⋄forward←{h+←⍵⋄d+←a×⍵}⋄down←{a+←⍵}⋄up←{a-←⍵}⋄⍎¨data⋄h×d

⍝ using complex nums
×/|9 11○+/data←(⊢/×0J1*'fu'⍸⊣/)↑' '(⍎¨@1≠⊆⊢)¨⊃⎕NGET'Day 2.txt'1
(9○+/×1⊥∘|11○+\×⊢×0≠9○⊢)data
