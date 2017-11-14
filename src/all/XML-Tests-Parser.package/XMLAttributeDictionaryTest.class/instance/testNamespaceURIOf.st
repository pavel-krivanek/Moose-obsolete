tests
testNamespaceURIOf
	| dictionary |

	dictionary := self prefixedAttributeDictionary.
	self
		assert: (dictionary namespaceURIOf: 'xml:id') = '';
		assert: (dictionary namespaceURIOf: 'prefix:name') = '';
		assert: (dictionary namespaceURIOf: 'otherPrefix:name') = '';
		assert: (dictionary namespaceURIOf: 'name') = ''.