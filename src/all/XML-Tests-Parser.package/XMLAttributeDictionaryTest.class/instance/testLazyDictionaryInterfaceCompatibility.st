tests
testLazyDictionaryInterfaceCompatibility
	| dictionary |

	self isTestingLazyDictionary
		ifFalse: [^ self].

	"protocols must be the same as the non-lazy dictionaries"
	dictionary := self emptyDictionary.
	XMLAttributeDictionary selectors do: [:each |
		self assert: (dictionary respondsTo: each)].