factory-chars
tab
	^self
		cacheAt: #'tab'
		ifAbsentPut: [ self char: Character tab message: 'tab expected' ]