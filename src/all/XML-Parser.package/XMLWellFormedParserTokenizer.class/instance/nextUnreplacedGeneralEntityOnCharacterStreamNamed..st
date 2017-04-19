tokenizing
nextUnreplacedGeneralEntityOnCharacterStreamNamed: aName
	driver handleUnreplacedGeneralEntityReference: aName.
	characterStream
		nextPut: $&;
		nextPutAll: aName;
		nextPut: $;.
	^ $&.