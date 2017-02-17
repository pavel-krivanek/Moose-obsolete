factory-chars
uppercase
	^self
		cacheAt: #'uppercase'
		ifAbsentPut: [ self on: (PPCharSetPredicate on: [ :char | char isUppercase ]) message: 'uppercase letter expected' ]