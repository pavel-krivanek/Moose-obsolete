tests
testAbbreviatedChildAxisPositionPredicateAttributePredicate
	specificationDocument allNodesDo: [:node | | paras |
		paras :=
			node canHaveChildren
				ifTrue: [node elementsAt: 'para']
				ifFalse: [#()].

		"selects the fifth para child of the context node if that child
		has a type attribute with value warning"
		self
			assertNodeSet: (node xpath: 'para[5][@type="warning"]')
			hasNodes:
				((paras size >= 5
					and: [(paras at: 5) hasAttributes
						and: [((paras at: 5) attributeAt: 'type') = 'warning']])
					ifTrue: [paras copyFrom: 5 to: 5]
					ifFalse: [#()])]