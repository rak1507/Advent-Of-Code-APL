n b←{(⊃⊃⍵)(↑↑1↓⍵)}⍎¨¨(''∘≢¨⊆⊢)⊃⎕NGET'Day 4.txt'1
f←{(n⌷⍨i⌷m)×+/,(i⌷b)×(i⌷m)<s⌷⍨i←⊃⍺⍺ m←⌊/(⌈⌿⍤2⌊⌈/)s←n⍳b}
⍋f⍬ ⍝ part 1
⍒f⍬ ⍝ part 2
