grammar-classes-method
nullLiteral
	 ^super nullLiteral trim ==> [:token | PJNullLiteralNode literalValue: (token inputValue)]