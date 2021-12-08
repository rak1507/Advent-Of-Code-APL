⍝ first solution (dumb bruteforce)
+/2 3 4 7∊⍨+/↑⊃,/1⊃¨data←'abcdefg'∘∊¨¨¨{' '(≠⊆⊢)¨'|'(≠⊆⊢)⍵}¨⊃⎕NGET'Day 8.txt'1 ⍝ part 1
segs←↑'abcdefg'∘∊¨'abcefg' 'cf' 'acdeg' 'acdfg' 'bcdf' 'abdfg' 'abdefg' 'acf' 'abcdefg' 'abcdfg'
'pmat'⎕CY'dfns'
+/{a b←⍵ ⋄ 10⊥segs⍳(↑b)[;p⌷⍨⍸segs≡⍥{(⊂⍋⍵)⌷⍵}⍤2⊢1 0 2⍉(↑a)[;p←pmat 7]]}¨data ⍝ dumb bruteforce

⍝ second solution (thanks to shadow https://github.com/shadowninja55)
+/2 3 4 7∊⍨∊≢¨¨⊢/data←↑{' '(≠⊆⊢)¨'|'(≠⊆⊢)⍵}¨⊃⎕NGET'Day 8.txt'1 ⍝ part 1
count←{+/↑+/⍵∘.=∊⍺}
ids←count⍨ 'abcefg' 'cf' 'acdeg' 'acdfg' 'bcdf' 'abdfg' 'abdefg' 'acf' 'abcdefg' 'abcdfg' ⍝ unique for all digits
+/10⊥⍉ids⍳↑count/data ⍝ part 2
