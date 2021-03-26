data←⊃⎕NGET'Day 5.txt'1

⍝ Part 1
+/{(3≤+/⍵∊'aeiou')∧(∨/2=/⍵)∧∧⌿~∨/↑'ab' 'cd' 'pq' 'xy'∘.⍷⊂⍵}↑data

⍝ Part 2
+/{∧/×≢¨'(.).\1' '(..).*\1'{⍺⎕S'&'⊢⍵}¨⊂⍵}¨data
