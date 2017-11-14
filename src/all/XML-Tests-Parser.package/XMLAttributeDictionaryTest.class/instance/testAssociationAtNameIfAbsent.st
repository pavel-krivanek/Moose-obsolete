tests
testAssociationAtNameIfAbsent
	| dictionary |

	dictionary := self prefixedAttributeDictionary.
	self assert:
		(dictionary
			associationAtName: 'id'
			ifAbsent: [self fail]) = ('xml:id' -> 'id').
	self assert:
		(dictionary
			associationAtName: 'xml:id'
			ifAbsent: [self fail]) = ('xml:id' -> 'id').
	self assert:
		(dictionary
			associationAtName: 'name'
			ifAbsent: [self fail]) = ('name' -> 'value').
	self assert:
		(dictionary
			associationAtName: 'prefix:name'
			ifAbsent: [self fail]) = ('prefix:name' -> 'prefixValue').
	self assert:
		(dictionary
			associationAtName: 'otherPrefix:name'
			ifAbsent: [self fail]) = ('otherPrefix:name' -> 'otherPrefixValue').
	self assert:
		(dictionary
			associationAtName: self absentKey
			ifAbsent: [self absentValue]) = self absentValue.