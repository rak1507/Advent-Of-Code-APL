a b c←{(⊂⊃⍵),↓⍉↑{⌽1↓1⌽' '(≠⊆⊢)⍵}¨2↓⍵}⊃⎕NGET'Day 14.txt' 1
m←+/b∘.≡↑⌽¨@1¨b,¨¨c
{(⌈/-⌊/)⌈2÷⍨(+/(∪∊b)∘.=↑b)+.×m+.×⍣⍵+/b∘.≡2,/a}¨10 40 ⍝ parts 1 and 2
