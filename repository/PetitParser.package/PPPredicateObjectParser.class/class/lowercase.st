factory-chars
lowercase
	^self
		cacheAt: #'lowercase'
		ifAbsentPut: [ self on: (PPCharSetPredicate on: [ :char | char isLowercase ]) message: 'lowercase letter expected' ]