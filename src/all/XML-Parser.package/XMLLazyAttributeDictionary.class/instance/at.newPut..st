private
at: aKey newPut: aValue
	"added to be consistent with XMLAttributeDictionary,
	but it shouldn't be needed"
	^ self copiedAttributeDictionary
		at: aKey
		newPut: aValue