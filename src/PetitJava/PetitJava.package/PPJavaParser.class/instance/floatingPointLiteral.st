as yet unclassified
floatingPointLiteral

	 ^super floatingPointLiteral trim ==> [ :token | PJFloatLiteralNode newFrom: token inputValue ]