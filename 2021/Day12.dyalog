s e←↓⍉↑'-'∘(≠⊆⊢)¨⊃⎕NGET'Day 12.txt' 1
s e←(s,e)(e,s)
≢{∨/1<+/'start' 'end'∘.≡⍵: '' ⋄ 'end'≡⊃⌽⍵:⊂⍵⋄(+/>≢)⊢∘≢⌸⍵/⍨(⊢≡⎕C)¨⍵:''⋄⊃,/∇¨⍵∘,⍥⊆¨e/⍨s≡¨⊂⊃⌽⍵}⊂'start'   ⍝ part 1
≢{∨/1<+/'start' 'end'∘.≡⍵: '' ⋄ 'end'≡⊃⌽⍵:⊂⍵⋄(+/>1+≢)⊢∘≢⌸⍵/⍨(⊢≡⎕C)¨⍵:''⋄⊃,/∇¨⍵∘,⍥⊆¨e/⍨s≡¨⊂⊃⌽⍵}⊂'start' ⍝ part 2
⍝ this is pretty bad
