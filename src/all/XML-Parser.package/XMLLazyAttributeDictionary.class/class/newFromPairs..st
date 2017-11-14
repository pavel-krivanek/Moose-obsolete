instance creation
newFromPairs: aSequenceableCollection
	^ self basicNew setAttributeDictionary:
		(self emptyAttributeDictionaryClass newFromPairs:
			aSequenceableCollection)