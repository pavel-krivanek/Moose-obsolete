grammar-literals
stringLiteral
	^ super stringLiteral
		==> [ :token | 
			(RBLiteralValueNode 
				value: (self buildString: token inputValue) 
				start: token start 
				stop: token stop)
				comments: token comments;
				yourself ]