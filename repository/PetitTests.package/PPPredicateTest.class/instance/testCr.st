testing-chars
testCr
	| parser |
	parser := #cr asParser.
	self assertCharacterSets: parser.
	self assert: parser parse: (String with: (Character codePoint: 13)) to: (Character codePoint: 13)