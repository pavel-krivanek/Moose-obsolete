tests
testAbbreviatedRootDescendantAxisChildAxis
	specificationDocument allNodesDo: [:node |
		"selects all the item elements in the same document as the
		context node that have an olist parent"
		self
			assertNodeSet: (node xpath: '//olist/item')
			hasNodes:
				((specificationDocument descendantElementsNamed: 'item')
					select: [:each |
						each hasParent
							and: [each parent isElementNamed: 'olist']])]