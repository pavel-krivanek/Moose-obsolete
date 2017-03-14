tests
testUnabbreviatedChildAxisSelfPredicate
	specificationDocument allNodesDo: [:node | | elements |
		elements :=
			node canHaveChildren
				ifTrue: [
					node elementsSelect: [:each |
						each isNamedAny: #('chapter' 'appendix')]]
				ifFalse: [#()].

		"selects the chapter and appendix children of the context node"
		self
			assertNodeSet:
				(node xPath: 'child::*[self::chapter or self::appendix]')
			hasNodes: elements.

		"selects the last chapter or appendix child of the context node"
		self
			assertNodeSet:
				(node xPath:
					'child::*[self::chapter or self::appendix][position()=last()]')
			hasNodes:
				(elements size > 0
					ifTrue: [Array with: elements last]
					ifFalse: [#()])]