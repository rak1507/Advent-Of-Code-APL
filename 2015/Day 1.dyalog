data←⊃⊃⎕NGET'Day 1.txt'1

⍝ Part 1
+/¯1*'()'⍳data

⍝ Part 2
1+⊃⍸¯1=+\¯1*'()'⍳data
