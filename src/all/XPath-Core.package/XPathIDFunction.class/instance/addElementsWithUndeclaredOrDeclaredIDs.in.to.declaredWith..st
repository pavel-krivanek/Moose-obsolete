invoking
addElementsWithUndeclaredOrDeclaredIDs: anIDSet in: aRootNode to: aNodeSet declaredWith: aDoctypeDefinition
	aRootNode allElementsDo: [:each |
		each hasAttributes
			ifTrue: [
				(aDoctypeDefinition attributeValidatorsAt: each name)
					ifNil: [
						self
							addElement: each
							withUndeclaredIDs: anIDSet
							to: aNodeSet]
					ifNotNil: [:attributeValidators |
						self
							addElement: each
							withUndeclaredOrDeclaredIDs: anIDSet
							to: aNodeSet
							declaredWith: attributeValidators].
				anIDSet isEmpty
					ifTrue: [^ self]]]