text←⊃⎕NGET'Day 7.txt'1
bags←'^\w+ \w+'⎕S'&'⊢text
sg←bags⍳⊂'shiny gold'
adj←↑{no←0 ⋄ ⍸⍣¯1{⍵[⍋⍵]}∊⍎¨'(\d+|no) (\w+ \w+|other) bag'⎕S'\1/bags⍳⊂''\2'''⊢⍵}¨text
counts←(⊣++.×)⍣≡⍨adj
⍝ Part 1
+/sg⌷⍉×counts
⍝ Part 2
+/sg⌷counts
