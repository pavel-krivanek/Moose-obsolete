tests
testUnabbreviatedRootDescendantAxisChildAxis
	specificationDocument allNodesDo: [:node |
		"selects all the item elements that have an olist parent and that
		are in the same document as the context node"
		self
			assertNodeSet: (node xPath: '/descendant::olist/child::item')
			hasNodes:
				((specificationDocument descendantElementsNamed: 'item')
					select: [:each |
						each hasParent
							and: [each parent isElementNamed: 'olist']])]