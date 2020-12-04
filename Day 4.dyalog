data ← {⊃,/'(.*):(.*)'⎕S'\1 ''\2'''¨' '(≠⊆⊢)⍵}¨{⍺,' ',⍵}/↑{⍵⊆⍨(⊂'')≢¨⍵}⊃⎕NGET'Day 4.txt' 1
validate ← {+/7=+/↑⍎¨¨⍵}

⍝ Part 1
byr←iyr←eyr←hgt←hcl←ecl←pid←1⍨ ⋄ cid←0⍨
validate data

⍝ Part 2
byr←(1920∘≤∧2002∘≥)∘⍎ ⋄ iyr←(2010∘≤∧2020∘≥)∘⍎ ⋄ eyr←(2020∘≤∧2030∘≥)∘⍎
hgt←{'c'∊⍵:(150∘≤∧193∘≥)⍎⍵~'cm' ⋄ 'i'∊⍵:(59∘≤∧76∘≥)⍎⍵~'in' ⋄ 0}
hcl←{'#'≠⊃⍵:0 ⋄ 7≠≢⍵:0 ⋄ (1↓⍵)∧.∊⊂'0123456789abcdef'}
ecl←'amb' 'blu' 'brn' 'gry' 'grn' 'hzl' 'oth'∊⍨⊂
pid←{0::0 ⋄ _←⍎⍵ ⋄ 9=≢⍵}
validate data

⍝ Part 2 regex based
r ← {≢('^(',⍺⍺,')$')⎕S 3⊢⍵}
cid←0⍨
byr←'19[2-9]\d|200[0-2]'r
iyr←'20(1\d|20)'r
eyr←'20(2\d|30)'r
hgt←'1([5-8]\d|9[0-3])cm|(59|6\d|7[0-6])in'r
hcl←'#[0-9a-f]{6}'r
ecl←'amb|blu|brn|gry|grn|hzl|oth'r
pid←'\d{9}'r
validate data
