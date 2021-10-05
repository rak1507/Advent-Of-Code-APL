text←⊃⎕NGET'Day 7.txt'1
bags←'^\w+ \w+'⎕S'&'⊢text
sg←bags⍳⊂'shiny gold'
adj←↑bags{⍸⍣¯1{⍵[⍋⍵]}∊⍎¨'(\d+|no) (\w+ \w+|other) bag'⎕S'bags⍳⍺{⍵≡''other'':⊂⍺⋄\1/⊂⍵}''\2'''⊢⍵}¨text
⍝ Part 1
+/sg⌷(⊢∨∨.∧)⍣≡⍨⍉×adj
⍝ Part 2
+/sg⌷(⊢⌈+.×)⍣≡⍨adj
