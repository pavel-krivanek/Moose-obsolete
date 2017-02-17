testing
testMax
	| parser printString suffix |
	parser := $a asParser max: 2.
	self assert: parser min equals: 0.
	self assert: parser max equals: 2.
	self assert: parser parse: '' to: #().
	self assert: parser parse: 'a' to: #($a).
	self assert: parser parse: 'aa' to: #($a $a).
	self
		assert: parser
		parse: 'aaa'
		to: #($a $a)
		end: 2.
	self
		assert: parser
		parse: 'aaaa'
		to: #($a $a)
		end: 2.
	printString := parser printString.
	suffix := printString copyFrom: printString size - 5 to: printString size.
	self assert: suffix = '[0, 2]'
