data←⊃⎕NGET'Day 7.txt'1
a b←↓⍉↑{⊃@1⊢'->'(≢¨⍥⊆⊆⊢)' '(≠⊆⊢)⍵}¨data

eval←{
    OR←{2⊥∨/(16⍴2)⊤⍺ ⍵}
    AND←{2⊥∧/(16⍴2)⊤⍺ ⍵}
    NOT←{2⊥~(16⍴2)⊤⍵}
    RSHIFT←{⌊⍺÷2*⍵}
    LSHIFT←{⍺×2*⍵}
    a b←⍺
    f←v∘⍳
    vals←⎕NS ⍬
    {⍵≡1 ⎕C ⍵:⍵ 
    0::⊢vals⍎⍕⍵,'←',⍎next←∊' ',¨⍕¨∇¨a⊃⍨f⊂,⍵
    vals⍎⍵}⍵
}

⍝ Part 1
⊢p1←(a b) eval 'a'

⍝ Part 2
((p1@(b⍳⊂,'b')⊢a) b) eval 'a'
