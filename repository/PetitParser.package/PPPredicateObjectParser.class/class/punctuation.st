factory-chars
punctuation
	^self
		cacheAt: #'punctuation'
		ifAbsentPut: [ self chars: '.,"''?!;:#$%&()*+-/<>=@[]\^_{}|~' message: 'punctuation expected' ]