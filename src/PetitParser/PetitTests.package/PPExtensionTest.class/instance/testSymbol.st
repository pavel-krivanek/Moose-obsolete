testing-parser
testSymbol
	| parser |
	parser := #any asParser.
	self assert: parser parse: 'a'.
	self assert: parser fail: ''