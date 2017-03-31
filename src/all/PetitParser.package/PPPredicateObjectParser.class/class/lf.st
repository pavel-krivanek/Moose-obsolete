factory-chars
lf
	^self
		cacheAt: #'lf'
		ifAbsentPut: [ self char: (Character codePoint: 10) ]