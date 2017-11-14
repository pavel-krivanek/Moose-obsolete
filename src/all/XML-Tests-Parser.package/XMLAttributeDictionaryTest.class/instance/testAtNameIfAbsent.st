tests
testAtNameIfAbsent
	| dictionary |

	dictionary := self prefixedAttributeDictionary.
	self assert:
		(dictionary
			atName: 'id'
			ifAbsent: [self fail]) = 'id'.
	self assert:
		(dictionary
			atName: 'xml:id'
			ifAbsent: [self fail]) = 'id'.
	self assert:
		(dictionary
			atName: 'name'
			ifAbsent: [self fail]) = 'value'.
	self assert:
		(dictionary
			atName: 'prefix:name'
			ifAbsent: [self fail]) = 'prefixValue'.
	self assert:
		(dictionary
			atName: 'otherPrefix:name'
			ifAbsent: [self fail]) = 'otherPrefixValue'.
	self assert:
		(dictionary
			atName: self absentKey
			ifAbsent: [self absentValue]) = self absentValue.