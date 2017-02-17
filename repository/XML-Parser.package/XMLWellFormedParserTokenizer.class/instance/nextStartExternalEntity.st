tokenizing
nextStartExternalEntity
	driver decodesCharacters
		ifTrue: [streamReader detectEncoding]
		ifFalse: [streamReader decodeStreamWithNullConverter].
	self nextXMLTextDeclaration.