accessing
changedListItem: anAttribute
	^ (changedAttributes ifNil: [changedAttributes := IdentityDictionary new])
		at: anAttribute
		ifAbsentPut: [
			self attributeClass
				name: 'new', anAttribute name
				value: 'new', anAttribute value]