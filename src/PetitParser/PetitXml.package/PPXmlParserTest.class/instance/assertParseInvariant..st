utilities
assertParseInvariant: aString
	"Assert that aString can be parsed, serialized and parsed again to the same tree."

	| tree stream string |
	tree := self parse: aString.
	self
		deny: tree isPetitFailure
		description: tree printString.
	stream := WriteStream on: String new.
	tree printXmlOn: stream.
	string := stream contents.
	self
		assert: (self parse: string) = tree
		description: 'Parse invariant not satisifed'.
	self assertInvariants: tree