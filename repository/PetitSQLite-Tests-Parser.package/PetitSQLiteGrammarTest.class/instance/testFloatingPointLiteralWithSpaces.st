tests
testFloatingPointLiteralWithSpaces

	self 
		parse: ' 05 . 878 '
		rule: #floatingPointLiteral.