grammar-literals
symbolLiteral
	^ super symbolLiteral
		==> [ :tokens | 
			(RBLiteralValueNode
				value: (self buildString: tokens last inputValue) asSymbol
				start: tokens first start
				stop: tokens last stop)
				comments: tokens last comments;
				yourself ]