factory-chars
cr
	^self
		cacheAt: #'cr'
		ifAbsentPut: [ self char: (Character codePoint: 13) message: 'carriage return expected' ]