private
at: aKey newPut: aValue
	"should be identical to StandardOrderedDictionary>>#at:put: except
	it returns a boolean to tell if the key is new"
	| oldSize |

	oldSize := dictionary size.
	dictionary
		at: aKey
		put: aValue.
	dictionary size > oldSize
		ifTrue: [
			orderedKeys size > oldSize
				ifFalse: [self growOrderedKeys].
			orderedKeys at: oldSize + 1 put: aKey.
			^ true].
	^ false.