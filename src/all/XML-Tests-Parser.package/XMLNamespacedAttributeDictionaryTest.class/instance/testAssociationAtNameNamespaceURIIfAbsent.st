tests
testAssociationAtNameNamespaceURIIfAbsent
	| dictionary |

	dictionary := self prefixedAttributeDictionary.
	self assert:
		(dictionary
			associationAtName: 'id'
			namespaceURI: XMLNamespaceScope xmlNamespaceURI
			ifAbsent: [self fail]) = ('xml:id' -> 'id').
	self assert:
		(dictionary
			associationAtName: 'id'
			namespaceURI: 'defaultNS'
			ifAbsent: [#absent]) = #absent.
	self assert:
		(dictionary
			associationAtName: 'xml:id'
			namespaceURI: XMLNamespaceScope xmlNamespaceURI
			ifAbsent: [self fail]) = ('xml:id' -> 'id').
	self assert:
		(dictionary
			associationAtName: 'xml:id'
			namespaceURI: 'defaultNS'
			ifAbsent: [#absent]) = #absent.

	self assert:
		(dictionary
			associationAtName: 'name'
			namespaceURI: 'prefixNS'
			ifAbsent: [self fail]) = ('prefix:name' -> 'prefixValue').
	self assert:
		(dictionary
			associationAtName: 'prefix:name'
			namespaceURI: 'prefixNS'
			ifAbsent: [self fail]) = ('prefix:name' -> 'prefixValue').
	self assert:
		(dictionary
			associationAtName: 'prefix:name'
			namespaceURI: 'defaultNS'
			ifAbsent: [#absent]) = #absent.

	self assert:
		(dictionary
			associationAtName: 'name'
			namespaceURI: 'otherPrefixNS'
			ifAbsent: [self fail]) = ('otherPrefix:name' -> 'otherPrefixValue').
	self assert:
		(dictionary
			associationAtName: 'otherPrefix:name'
			namespaceURI: 'otherPrefixNS'
			ifAbsent: [self fail]) = ('otherPrefix:name' -> 'otherPrefixValue').
	self assert:
		(dictionary
			associationAtName: 'otherPrefix:name'
			namespaceURI: 'defaultNS'
			ifAbsent: [#absent]) = #absent.

	self assert:
		(dictionary
			associationAtName: 'name'
			namespaceURI: ''
			ifAbsent: [self fail]) = ('name' -> 'value').
	self assert:
		(dictionary
			associationAtName: 'name'
			namespaceURI: 'defaultNS'
			ifAbsent: [#absent]) = #absent.