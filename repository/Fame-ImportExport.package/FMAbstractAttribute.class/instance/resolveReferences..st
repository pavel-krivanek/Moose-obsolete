inferring
resolveReferences: index
	| references elem count |
	references := elements asSet select: #isNumber.
	references do:
			[ :ref | 
			elem := index at: ref.
			count := elements occurrencesOf: ref.
			elem notNil should beTrue.
			elements removeAllOccurrencesOf: ref ifAbsent: nil.
			elements add: elem withOccurrences: count ]