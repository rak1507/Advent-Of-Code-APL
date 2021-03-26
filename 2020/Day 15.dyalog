⍝ Hardcoded input
f←{c←⍵⍴0⋄c[2 1 10 11 0]←1+⍳5⋄⊃{n i←⍵⋄r←c[n]⋄c[n]←i⋄((i-r)×(r≠0))(i+1)}⍣(⍵-6)⊢6 6}

⍝ Part 1
f 2020

⍝ Part 2
f 30000000
