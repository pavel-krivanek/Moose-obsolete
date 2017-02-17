accessing
attributeAssociations
	^ self listItems collect: [:each | each name -> each value]