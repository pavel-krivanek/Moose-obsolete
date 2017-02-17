tokenizing - dtd
nextAttributeEntityType
	self expectNextAll: 'ENTIT'.
	streamReader peek == $Y
		ifFalse: [
			^ self
				expectNextAll: 'ENTITIES'
				startingAt: 6 "'ENTITIES' indexOfSubCollection: 'IES'"].
	streamReader next.
	^ 'ENTITY'.