******************
DESCRIPTION
******************

Iterating over an array and if number it will add 2

******************
INPUT
******************

[
    0,
    1,
    2,
    3
]

******************
DWL
******************

%dw 2.0
output application/json

fun recursiveChange(a: Array) =
    a map if($ is Number) ($ + 2) else recursiveChange($)
---
recursiveChange(payload)

******************
OUTPUT
******************

[
  2,
  3,
  4,
  5
]