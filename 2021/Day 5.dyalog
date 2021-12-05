data←↑{2 2⍴⊃⊢⍤//', '⎕VFI ⍵}¨⊃⎕NGET'Day 5.txt'1
fill←{(⊣⌿⍵)+⍤1⊢(-×d)×⍤1⍉↑⍳¨1+|d←-⌿⍵}
+/1<⊢∘≢⌸⊃⍪/⊂⍤fill⍤2{⍵⌿⍨∨/0=-⌿⍤2⊢⍵}data ⍝ part 1
+/1<⊢∘≢⌸⊃⍪/⊂⍤fill⍤2⊢data ⍝ part 2
