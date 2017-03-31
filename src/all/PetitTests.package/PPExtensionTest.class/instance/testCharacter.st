testing-parser
testCharacter
	| parser |
	parser := $a asParser.
	self assert: parser parse: 'a' to: $a.
	self assert: parser fail: 'b'