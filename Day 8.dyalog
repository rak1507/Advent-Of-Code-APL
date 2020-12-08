instrs←⊃⎕NGET'Day 8.txt' 1
nop←{⍺+1} ⋄ acc←{a+←⍵ ⋄ ⍺+1} ⋄ jmp←+

⍝ Part 1
{a←0 ⋄ 0::a ⋄ _←⍵{⍵,⍨⍎⍕i,⍺⍺⊃⍨i←⊃⍵}⍣{⍺≢∪⍺}1 ⋄ a} instrs

⍝ Part 2
run←{a←0 ⋄ 0::a ⋄ _←⍵{⍵,⍨⍎⍕i,⍺⍺⊃⍨i←⊃⍵}⍣{⍺≢∪⍺}1 ⋄ 0}
jmps←run∘{'jmp'⎕R'nop'@⍵⊢instrs}¨⍸∧/↑'jmp'∘∊¨instrs
nops←run∘{'nop'⎕R'jmp'@⍵⊢instrs}¨⍸∧/↑'nop'∘∊¨instrs
0~⍨jmps,nops
