grammar-literals-string
instanceofExpression 

 ^super instanceofExpression ==> [:node | node second ifNil: [node first] ifNotNil: [node]]