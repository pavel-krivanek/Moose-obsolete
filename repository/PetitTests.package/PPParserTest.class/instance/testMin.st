testing
testMin
	| parser printString suffix |
	parser := $a asParser min: 2.
	self assert: parser min equals: 2.
	self assert: parser max > parser min.
	self assert: parser fail: ''.
	self assert: parser fail: 'a'.
	self assert: parser parse: 'aa' to: #($a $a).
	self assert: parser parse: 'aaa' to: #($a $a $a).
	self assert: parser parse: 'aaaa' to: #($a $a $a $a).
	printString := parser printString.
	suffix := printString copyFrom: printString size - 5 to: printString size.
	self assert: suffix = '[2, *]'
