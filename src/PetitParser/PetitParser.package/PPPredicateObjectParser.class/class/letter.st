factory-chars
letter
	^self
		cacheAt: #'letter'
		ifAbsentPut: [ self on: (PPCharSetPredicate on: [ :char | char isLetter ]) message: 'letter expected' ]