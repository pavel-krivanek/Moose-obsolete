grammar-literals-string
unaryPostfixExpression 
	^ super unaryPostfixExpression ==> [:node | node second ifNil: [node first] ifNotNil: [node]]