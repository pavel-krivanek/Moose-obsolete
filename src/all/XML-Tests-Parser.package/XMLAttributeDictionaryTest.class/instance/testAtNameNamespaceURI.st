tests
testAtNameNamespaceURI
	| dictionary |

	dictionary := self prefixedAttributeDictionary.
	self assert:
		(dictionary
			atName: 'id'
			namespaceURI: XMLNamespaceScope xmlNamespaceURI) = ''.
	self assert:
		(dictionary
			atName: 'id'
			namespaceURI: 'defaultNS') = ''.
	self assert:
		(dictionary
			atName: 'id'
			namespaceURI: '') = 'id'.
	self assert:
		(dictionary
			atName: 'xml:id'
			namespaceURI: XMLNamespaceScope xmlNamespaceURI) = ''.
	self assert:
		(dictionary
			atName: 'xml:id'
			namespaceURI: 'defaultNS') = ''.
	self assert:
		(dictionary
			atName: 'xml:id'
			namespaceURI: '') = 'id'.

	self assert:
		(dictionary
			atName: 'name'
			namespaceURI: 'prefixNS') = ''.
	self assert:
		(dictionary
			atName: 'prefix:name'
			namespaceURI: 'prefixNS') = ''.
	self assert:
		(dictionary
			atName: 'prefix:name'
			namespaceURI: 'defaultNS') = ''.

	self assert:
		(dictionary
			atName: 'name'
			namespaceURI: 'otherPrefixNS') = ''.
	self assert:
		(dictionary
			atName: 'otherPrefix:name'
			namespaceURI: 'otherPrefixNS') = ''.
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