tests
testAssociationAtNameNamespaceURI
	| dictionary |

	dictionary := self prefixedAttributeDictionary.
	self assert:
		(dictionary
			associationAtName: 'id'
			namespaceURI: XMLNamespaceScope xmlNamespaceURI) isNil.
	self assert:
		(dictionary
			associationAtName: 'id'
			namespaceURI: 'defaultNS') isNil.
	self assert:
		(dictionary
			associationAtName: 'id'
			namespaceURI: '') = ('xml:id' -> 'id').
	self assert:
		(dictionary
			associationAtName: 'xml:id'
			namespaceURI: XMLNamespaceScope xmlNamespaceURI) isNil.
	self assert:
		(dictionary
			associationAtName: 'xml:id'
			namespaceURI: 'defaultNS') isNil.
	self assert:
		(dictionary
			associationAtName: 'xml:id'
			namespaceURI: '') = ('xml:id' -> 'id').

	self assert:
		(dictionary
			associationAtName: 'name'
			namespaceURI: 'prefixNS') isNil.
	self assert:
		(dictionary
			associationAtName: 'prefix:name'
			namespaceURI: 'prefixNS') isNil.
	self assert:
		(dictionary
			associationAtName: 'prefix:name'
			namespaceURI: 'defaultNS') isNil.

	self assert:
		(dictionary
			associationAtName: 'name'
			namespaceURI: 'otherPrefixNS') isNil.
	self assert:
		(dictionary
			associationAtName: 'otherPrefix:name'
			namespaceURI: 'otherPrefixNS') isNil.
	self assert:
		(dictionary
			associationAtName: 'otherPrefix:name'
			namespaceURI: 'defaultNS') isNil.

	self assert:
		(dictionary
			associationAtName: 'name'
			namespaceURI: '') = ('name' -> 'value').
	self assert:
		(dictionary
			associationAtName: 'name'
			namespaceURI: 'defaultNS') isNil.