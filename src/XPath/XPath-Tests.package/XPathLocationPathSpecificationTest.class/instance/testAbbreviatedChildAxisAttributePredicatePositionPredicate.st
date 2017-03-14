tests
testAbbreviatedChildAxisAttributePredicatePositionPredicate
	specificationDocument allNodesDo: [:node |
		"selects the fifth para child of the context node that has a type
		attribute with value warning"
		self
			assertNodeSet: (node xPath: 'para[@type=''warning''][5]')
			hasNodes:
				(node canHaveChildren
					ifTrue: [
						(((node elementsAt: 'para') select: [:each |
							each hasAttributes
								and: [(each attributeAt: 'type') = 'warning']])
							at: 5)
								ifNil: [#()]
								ifNotNil: [:para | Array with: para]]
					ifFalse: [#()])]