grammar-literals
numberLiteral
	^ super numberLiteral
		==> [ :token | 
			(RBLiteralValueNode
				value: (Number readFrom: token inputValue)
				start: token start
				stop: token stop
				source: token inputValue)
				comments: token comments;
				yourself ]