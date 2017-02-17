grammar-literals-string
conditionalExpression 

 ^super conditionalExpression ==> [:node | node second ifNil: [node first] ifNotNil: [node]]