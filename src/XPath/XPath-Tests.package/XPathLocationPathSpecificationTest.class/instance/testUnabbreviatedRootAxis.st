tests
testUnabbreviatedRootAxis
	specificationDocument allNodesDo: [:node |
		"selects the document root (which is always the parent of the document element)"
		self
			assertNodeSet: (node xPath: '/')
			hasNodes: (Array with: specificationDocument)]