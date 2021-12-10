shifts←{(⍺,2⊣/⍵)(2⊢/⍵,⍺)(2⊢⌿⍵⍪⍺)(⍺⍪2⊣⌿⍵)}
+/1+data/⍥,⍨data<⊃⌊/100 shifts data←⍎¨↑⊃⎕NGET'Day 9.txt'1 ⍝ part 1
×/3↑{⍵[⍒⍵]}⊢∘≢⌸0~⍨∊{(×⍵)×⍵⌈⊃⌈/0 shifts ⍵}⍣≡{(2+⍳+/,⍵)@⊢⍵}9≠data ⍝ part 2
