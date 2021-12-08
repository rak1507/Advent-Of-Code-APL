+/2 3 4 7∊⍨+/↑⊃,/1⊃¨data←'abcdefg'∘∊¨¨¨{' '(≠⊆⊢)¨'|'(≠⊆⊢)⍵}¨⊃⎕NGET'Day 8.txt'1 ⍝ part 1
segs←↑'abcdefg'∘∊¨'abcefg' 'cf' 'acdeg' 'acdfg' 'bcdf' 'abdfg' 'abdefg' 'acf' 'abcdefg' 'abcdfg'
+/{a b←⍵ ⋄ 10⊥segs⍳(↑b)[;p⌷⍨⍸segs≡⍥{(⊂⍋⍵)⌷⍵}⍤2⊢1 0 2⍉(↑a)[;p←pmat 7]]}¨data ⍝ dumb bruteforce
