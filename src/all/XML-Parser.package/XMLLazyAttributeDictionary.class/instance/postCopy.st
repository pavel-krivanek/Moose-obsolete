copying
postCopy
	attributeDictionary == self emptyAttributeDictionary
		ifFalse: [attributeDictionary := attributeDictionary copy]