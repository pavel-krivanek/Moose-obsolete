tests
testUnabbreviatedAncestorAxis
	specificationDocument allNodesDo: [:node |
		"selects all div ancestors of the context node"
		self
			assertNodeSet: (node xPath: 'ancestor::div')
			hasNodes:
				(node ancestorElements select: [:each |
					each isNamed: 'div'])]