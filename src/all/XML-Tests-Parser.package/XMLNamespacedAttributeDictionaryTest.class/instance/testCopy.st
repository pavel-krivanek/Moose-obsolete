tests
testCopy
	| dictionary copy |

	super testCopy.
	dictionary := self prefixedAttributeDictionary.
	copy := dictionary copy.
	self assert: dictionary namespaceScope == copy namespaceScope.