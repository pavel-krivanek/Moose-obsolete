tests
testInvalidUnionExpressionType
	#('//person | 1' '1 | //person'
		'//person | true()' 'true() | //person'
		'//person | "string"' '"string" | //person') do: [:each |
		self
			should: [document xPath: each]
			raise: XPathTypeException].