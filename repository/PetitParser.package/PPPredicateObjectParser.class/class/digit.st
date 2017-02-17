factory-chars
digit
	^self
		cacheAt: #'digit'
		ifAbsentPut: [ self on: (PPCharSetPredicate on: [ :char | char isDigit ]) message: 'digit expected' ]