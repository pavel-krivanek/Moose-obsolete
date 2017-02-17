testing-chars
testLf
	| parser |
	parser := #lf asParser.
	self assertCharacterSets: parser.
	self assert: parser parse: (String with: Character lf) to: Character lf