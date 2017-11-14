tests
testNamespaceURIOf
	| dictionary |

	dictionary := self prefixedAttributeDictionary.
	self assert:
		(dictionary namespaceURIOf: 'xml:id') =
			XMLNamespaceScope xmlNamespaceURI.
	self
		assert: (dictionary namespaceURIOf: 'prefix:name') = 'prefixNS';
		assert: (dictionary namespaceURIOf: 'otherPrefix:name') = 'otherPrefixNS';
		assert: (dictionary namespaceURIOf: 'name') = ''.