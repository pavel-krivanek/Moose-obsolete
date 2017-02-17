grammar-literals-string
shiftExpression 

 ^super shiftExpression ==> [:node | node second ifEmpty: [node first] ifNotEmpty: [node]]