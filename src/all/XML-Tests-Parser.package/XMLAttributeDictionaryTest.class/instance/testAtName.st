tests
testAtName
	| dictionary |

	dictionary := self prefixedAttributeDictionary.
	self
		assert: (dictionary atName: 'id') = 'id';
		assert: (dictionary atName: 'xml:id') = 'id';
		assert: (dictionary atName: 'name') = 'value';
		assert: (dictionary atName: 'prefix:name') = 'prefixValue';
		assert: (dictionary atName: 'otherPrefix:name') = 'otherPrefixValue';
		assert: (dictionary atName: self absentKey) = ''.