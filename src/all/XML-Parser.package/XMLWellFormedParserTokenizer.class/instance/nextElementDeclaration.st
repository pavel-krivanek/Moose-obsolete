tokenizing - dtd
nextElementDeclaration
	self
		expectNextAll: 'ELEMENT'
		startingAt: 2. "the 'E' was already read"

	self expectSeparatorsInDeclaration.
	driver
		handleElementDeclaration: self nextName
		contentModel: self nextContentModel.
	self
		skipSeparatorsInDeclaration;
		expectTerminator.