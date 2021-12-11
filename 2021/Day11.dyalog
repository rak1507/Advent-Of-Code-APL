data←⍎¨↑⊃⎕NGET'Day 11.txt'1
flash←{b o←⍵ ⋄ (b∧~f),⍥⊆o+{+/,⍵}⌺3 3⊢f←b∧9<o}
⊃{n o←⍵ ⋄ b o←flash⍣≡(o=o)(1+o) ⋄ (n++/~,b)(b×o)}⍣100⊢0,⊂data ⍝ part 1
{n o←⍵ ⋄ b o←flash⍣≡(o=o)(1+o) ⋄ ~∨/,b:n ⋄ ∇(n+1)(b×o)}1,⊂data ⍝ part 2
