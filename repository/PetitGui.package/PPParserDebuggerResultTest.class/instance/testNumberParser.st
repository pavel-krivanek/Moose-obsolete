tests
testNumberParser
	| parser result |
	parser := PPArithmeticParser new productionAt: #number.
	result := PPParserDebuggerResult parse: '1' with: parser.
	self assert: result children isEmpty.
	self assert: result result equals: 1