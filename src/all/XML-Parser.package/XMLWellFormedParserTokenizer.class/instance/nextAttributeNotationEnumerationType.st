tokenizing - dtd
nextAttributeNotationEnumerationType
	characterStream
		reset;
		nextPutAll:
			(self
				expectNextAll: 'NOTATION'
				startingAt: 2). "the 'N' was already read"
	self
		expectSeparatorsInDeclaration;
		expectNext: $(.
	characterStream nextPutAll: ' ('.

	"must have at least one declaration name in the enumeration"
	self
		skipSeparatorsInDeclaration;
		nextNotationNameOnCharacterStream.
	[self skipSeparatorsInDeclaration.
		streamReader peek == $)]
		whileFalse: [
			characterStream nextPut: (self expectNext: $|).
			self
				skipSeparatorsInDeclaration;
				nextNotationNameOnCharacterStream].
	
	^ characterStream
		nextPut: streamReader next;
		contents.