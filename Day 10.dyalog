a←0,a,3+⊃⌽a←{⍵[⍋⍵]}⍎¨⊃⎕NGET 'Day 10.txt' 1

⍝ Part 1
×/⊢∘≢⌸2-/a

⍝ Part 2
×/1 1 2 4 7⌷⍨⊂¯2-/⍸1,3=¯2-/a
