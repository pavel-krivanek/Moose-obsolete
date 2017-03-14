as yet unclassified
testFor
	self parse: 'for a = 1 to 10 do printf a done' rule: #for.

	self assert: result size = 8.
	self assert: result eighth size = 1.
	