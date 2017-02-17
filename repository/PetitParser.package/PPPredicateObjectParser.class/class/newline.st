factory-chars
newline
	^self
		cacheAt: #'newline'
		ifAbsentPut: [ self chars: (String with: (Character codePoint: 13) with: (Character codePoint: 10)) message: 'newline expected' ]