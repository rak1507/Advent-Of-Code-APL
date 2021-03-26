data←⍎¨'x'(≠⊆⊢)⍤1↑⊃⎕NGET'Day 2.txt'1

⍝ Part 1
+/((⌊/+2×+/)⊢×1⌽⊢) data

⍝ Part 2
+/(×/+2×+/-⌈/) data
