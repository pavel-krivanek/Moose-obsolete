tests
testUnabbreviatedRootDescendantAxis
	specificationDocument allNodesDo: [:node |
		"selects all the para elements in the same document as the context node"
		self
			assertNodeSet: (node xpath: '/descendant::para')
			hasNodes: (specificationDocument descendantElementsNamed: 'para')]