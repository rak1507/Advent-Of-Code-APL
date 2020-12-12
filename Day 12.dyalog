a←⊃⎕NGET 'Day 12.txt' 1
n←⍎¨1↓¨a
d←+⌿0J1 0J¯1 1 ¯1 ×⍤0 1⊢'NSEW'∘.∊a

⍝ Part 1
l←×\*○180÷⍨n×+⌿0J1 0J¯1×⍤0 1⊢'LR'∘.∊a
+/|9 11○⊂+/n×d+l×'F'∊¨a

⍝ Part 2
w←l×10J1++\d×n
+/|9 11○⊂+/n×w×'F'∊¨a
