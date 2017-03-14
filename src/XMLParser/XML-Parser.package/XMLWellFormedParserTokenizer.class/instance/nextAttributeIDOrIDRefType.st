tokenizing - dtd
nextAttributeIDOrIDRefType
	self expectNextAll: 'ID'.
	streamReader peek == $R
		ifFalse: [^ 'ID'].	
	self
		expectNextAll: 'IDREF'
		startingAt: 3.
	streamReader peek == $S
		ifFalse: [^ 'IDREF'].
	streamReader next.
	^ 'IDREFS'.