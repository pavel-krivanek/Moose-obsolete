tokenizing - dtd
nextAttributeEnumerationType
	characterStream
		reset;
		nextPut: (self expectNext: $().

	"must have at least one value in the enumeration"
	self
		skipSeparatorsInDeclaration;
		nextNmtokenOnCharacterStream.
	[self skipSeparatorsInDeclaration.
		streamReader peek == $)]
		whileFalse: [
			characterStream nextPut: (self expectNext: $|).
			self
				skipSeparatorsInDeclaration;
				nextNmtokenOnCharacterStream].

	^ characterStream
		nextPut: streamReader next;
		contents.