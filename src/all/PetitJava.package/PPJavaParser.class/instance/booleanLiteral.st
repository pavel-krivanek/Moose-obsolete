grammar-literals-boolean
booleanLiteral 

 ^ super booleanLiteral trim ==> [:token | 
		| value |
		(token inputValue = 'false') 
			ifTrue:  [ value := false]
			ifFalse: [(token inputValue = 'true') 
				ifTrue: [value := true]
				ifFalse: [self error: 'A Boolean Literal must be either false or true']].
		PJBooleanLiteralNode booleanValue: value.]