invoking
addElement: anElement withUndeclaredOrDeclaredIDs: anIDSet to: aNodeSet declaredWith: anAttributeValidatorDictionary
	anElement attributeNodesDo: [:each |
		((anAttributeValidatorDictionary
			at: each name
			ifAbsent: [nil])
				ifNil: [each name = 'xml:id']
				ifNotNil: [:attributeValidator | attributeValidator isID])
			ifTrue: [
				(anIDSet
					remove: each value
					ifAbsent: [nil])
					ifNotNil: [
						aNodeSet addLast: anElement.
						^ self]]]