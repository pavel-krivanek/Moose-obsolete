testing-chars
testNewline
	| parser |
	parser := #newline asParser.
	self assertCharacterSets: parser.
	self assert: parser parse: (String with: Character cr) to: Character cr.
	self assert: parser parse: (String with: Character lf) to: Character lf.
	self assert: parser fail: ' '