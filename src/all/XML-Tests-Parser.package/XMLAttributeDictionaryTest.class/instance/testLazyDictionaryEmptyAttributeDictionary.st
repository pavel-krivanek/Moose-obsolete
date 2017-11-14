tests
testLazyDictionaryEmptyAttributeDictionary
	self isTestingLazyDictionary
		ifFalse: [^ self].

	self assert:
		self emptyDictionary attributeDictionary ==
			self dictionaryClass emptyAttributeDictionary.
	self assert:
		self dictionaryClass emptyAttributeDictionary isEmpty.