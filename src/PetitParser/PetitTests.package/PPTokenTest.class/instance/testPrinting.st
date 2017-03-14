testing
testPrinting
	| result |
	result := PPToken on: 'var'.
	self assert: result printString includesSubstring: 'PPToken[1,3]'