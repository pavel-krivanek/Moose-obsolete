tests
testAssociationAtName
	| dictionary |

	dictionary := self prefixedAttributeDictionary.
	self assert:
		(dictionary associationAtName: 'id') = ('xml:id' -> 'id').
	self assert:
		(dictionary associationAtName: 'xml:id') = ('xml:id' -> 'id').
	self assert:
		(dictionary associationAtName: 'name') = ('name' -> 'value').
	self assert:
		(dictionary associationAtName: 'prefix:name') = ('prefix:name' -> 'prefixValue').
	self assert:
		(dictionary associationAtName: 'otherPrefix:name') =
			('otherPrefix:name' -> 'otherPrefixValue').
	self assert: (dictionary associationAtName: self absentKey) isNil.