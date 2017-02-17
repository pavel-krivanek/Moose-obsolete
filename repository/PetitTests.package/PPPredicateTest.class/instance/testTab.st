testing-chars
testTab
	| parser |
	parser := #tab asParser.
	self assertCharacterSets: parser.
	self assert: parser parse: (String with: Character tab) to: Character tab