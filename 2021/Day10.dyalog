+/{⊃3 57 1197 25137⌷⍨⊂4~⍨')]}>'⍳⍵}¨data←'\(\)|\[\]|\{\}|\<\>'⎕R''⍣≡¨⊃⎕NGET'Day 10.txt' 1 ⍝ part 1
{⍵⊃⍨⌊2÷⍨≢⍵} {⍵[⍋⍵]} 0~⍨{(5⊥1+'([{<'⍳⌽⍵)×∧/~')]}>'∊⍵}¨ data ⍝ part 2
