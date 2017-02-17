factory-chars
word
	^self
		cacheAt: #'word'
		ifAbsentPut: [ self on: (PPCharSetPredicate on: [ :char | char isAlphaNumeric ]) message: 'letter or digit expected' ]