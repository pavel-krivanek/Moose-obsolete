tests
testAbbreviatedRootDescendantAxis
	specificationDocument allNodesDo: [:node |
		"para selects all the para descendants of the document root and thus
		selects all para elements in the same document as the context node"
		self
			assertNodeSet: (node xpath: '//para')
			hasNodes: (specificationDocument descendantElementsNamed: 'para')]