tokenizing
nextUnreplacedGeneralEntityOnCharacterDataStreamNamed: aName
	driver handleUnreplacedGeneralEntityReference: aName.
	characterDataStream
		nextPut: $&;
		nextPutAll: aName;
		nextPut: $;.
	^ $&.