h d←0⋄forward←{h+←⍵}⋄down←{d+←⍵}⋄up←{d-←⍵}⋄⍎¨data←⊃⎕NGET'Day 2.txt'1⋄h×d
h d a←0⋄forward←{h+←⍵⋄d+←a×⍵}⋄down←{a+←⍵}⋄up←{a-←⍵}⋄⍎¨data⋄h×d
