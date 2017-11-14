tests
testAsXMLAttributeDictionary
	| dictionary |

	dictionary := self emptyDictionary.
	self assert: dictionary asXMLAttributeDictionary == dictionary.