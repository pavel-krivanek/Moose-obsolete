tests
testArithmetic
	| parser result |
	parser := PPArithmeticParser new.
	result := PPParserDebuggerResult parse: '1 + 2' with: parser.
	self assert: result children size equals: 1.
	self assert: result children first result equals: 3