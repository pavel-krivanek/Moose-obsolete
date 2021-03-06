tests
testUnabbreviatedChildAxisAttributePredicate
	specificationDocument allNodesDo: [:node |
		"selects all para children of the context node that have a type
		attribute with value warning"
		self
			assertNodeSet: (node xpath: 'child::para[attribute::type="warning"]')
			hasNodes:
				(node canHaveChildren
					ifTrue: [
						(node elementsAt: 'para') select: [:each |
							each hasAttributes
								and: [(each attributeAt: 'type') = 'warning']]]
					ifFalse: [#()])]