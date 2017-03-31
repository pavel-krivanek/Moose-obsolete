accessing
attributeAssociations
	^ self collect: [:each | each name -> each value]