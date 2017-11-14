tests
testAtNameNamespaceURIIfAbsent
	| dictionary |

	dictionary := self prefixedAttributeDictionary.
	self assert:
		(dictionary
			atName: 'id'
			namespaceURI: XMLNamespaceScope xmlNamespaceURI
			ifAbsent: [self fail]) = 'id'.
	self assert:
		(dictionary
			atName: 'id'
			namespaceURI: 'defaultNS'
			ifAbsent: ['absent']) = 'absent'.
	self assert:
		(dictionary
			atName: 'xml:id'
			namespaceURI: XMLNamespaceScope xmlNamespaceURI
			ifAbsent: [self fail]) = 'id'.
	self assert:
		(dictionary
			atName: 'xml:id'
			namespaceURI: 'defaultNS'
			ifAbsent: ['absent']) = 'absent'.

	self assert:
		(dictionary
			atName: 'name'
			namespaceURI: 'prefixNS'
			ifAbsent: [self fail]) = 'prefixValue'.
	self assert:
		(dictionary
			atName: 'prefix:name'
			namespaceURI: 'prefixNS'
			ifAbsent: [self fail]) = 'prefixValue'.
	self assert:
		(dictionary
			atName: 'prefix:name'
			namespaceURI: 'defaultNS'
			ifAbsent: ['absent']) = 'absent'.

	self assert:
		(dictionary
			atName: 'name'
			namespaceURI: 'otherPrefixNS'
			ifAbsent: [self fail]) = 'otherPrefixValue'.
	self assert:
		(dictionary
			atName: 'otherPrefix:name'
			namespaceURI: 'otherPrefixNS'
			ifAbsent: [self fail]) = 'otherPrefixValue'.
	self assert:
		(dictionary
			atName: 'otherPrefix:name'
			namespaceURI: 'defaultNS'
			ifAbsent: ['absent']) = 'absent'.

	self assert:
		(dictionary
			atName: 'name'
			namespaceURI: ''
			ifAbsent: [self fail]) = 'value'.
	self assert:
		(dictionary
			atName: 'name'
			namespaceURI: 'defaultNS'
			ifAbsent: ['absent']) = 'absent'.