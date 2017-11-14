accessing
prefixedAttributeDictionary
	^ (self dictionaryClass new setNamespaceScope: self namespaceScope)
		at: 'name' put: 'value';
		at: 'xml:id' put: 'id';
		at: 'prefix:name' put: 'prefixValue';
		at: 'otherPrefix:name' put: 'otherPrefixValue';
		yourself