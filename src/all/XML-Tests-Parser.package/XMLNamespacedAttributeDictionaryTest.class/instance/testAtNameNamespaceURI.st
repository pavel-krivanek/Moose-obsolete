tests
testAtNameNamespaceURI
	| dictionary |

	dictionary := self prefixedAttributeDictionary.
	self assert:
		(dictionary
			atName: 'id'
			namespaceURI: XMLNamespaceScope xmlNamespaceURI) = 'id'.
	self assert:
		(dictionary
			atName: 'id'
			namespaceURI: 'defaultNS') = ''.
	self assert:
		(dictionary
			atName: 'xml:id'
			namespaceURI: XMLNamespaceScope xmlNamespaceURI) = 'id'.
	self assert:
		(dictionary
			atName: 'xml:id'
			namespaceURI: 'defaultNS') = ''.

	self assert:
		(dictionary
			atName: 'name'
			namespaceURI: 'prefixNS') = 'prefixValue'.
	self assert:
		(dictionary
			atName: 'prefix:name'
			namespaceURI: 'prefixNS') = 'prefixValue'.
	self assert:
		(dictionary
			atName: 'prefix:name'
			namespaceURI: 'defaultNS') = ''.

	self assert:
		(dictionary
			atName: 'name'
			namespaceURI: 'otherPrefixNS') = 'otherPrefixValue'.
	self assert:
		(dictionary
			atName: 'otherPrefix:name'
			namespaceURI: 'otherPrefixNS') = 'otherPrefixValue'.
	self assert:
		(dictionary
			atName: 'otherPrefix:name'
			namespaceURI: 'defaultNS') = ''.

	self assert:
		(dictionary
			atName: 'name'
			namespaceURI: '') = 'value'.
	self assert:
		(dictionary
			atName: 'name'
			namespaceURI: 'defaultNS') = ''.