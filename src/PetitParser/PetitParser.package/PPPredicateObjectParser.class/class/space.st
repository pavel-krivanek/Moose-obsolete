factory-chars
space
	^self
		cacheAt: #'space'
		ifAbsentPut: [ self on: (PPCharSetPredicate on: [ :char | char isSeparator ]) message: 'separator expected' ]