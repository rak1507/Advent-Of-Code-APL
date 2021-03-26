data←⊃⎕NGET'Day 6.txt'1
solve←{
     on←⍎⊃⍵ ⋄ off←⍎1⊃⍵ ⋄ toggle←⍎2⊃⍵
     +/,⊃{parts←⌽' '(≠⊆⊢)⍺
         corners←⍎¨0 2⊃¨⊂parts
         coords←(⊂1⊃corners)+,⍳1+⊃-/corners
         0⌈(⍎3⊃parts)@coords⊢⍵}/(⌽⍺),⊂0⍴⍨2⍴1000
}
 
⍝ Part 1
data solve '10~'

⍝ Part 2
data solve '+∘1' '-∘1' '+∘2'
