tests
testAbbreviatedSelfAxis
	specificationDocument allNodesDo: [:node |
		"selects the context node"
		self
			assertNodeSet: (node xPath: '.')
			hasNode: node]