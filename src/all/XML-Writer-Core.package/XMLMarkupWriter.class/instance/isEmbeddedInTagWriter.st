testing
isEmbeddedInTagWriter
	self parent
		ifNil: [^ false]
		ifNotNil: [:parent | ^ parent isTagWriter]