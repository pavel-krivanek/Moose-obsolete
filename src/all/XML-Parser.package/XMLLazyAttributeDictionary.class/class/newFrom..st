instance creation
newFrom: anAssociationCollection
	^ self basicNew setAttributeDictionary:
		(self emptyAttributeDictionaryClass newFrom:
			anAssociationCollection)