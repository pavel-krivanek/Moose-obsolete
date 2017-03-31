tests
testUnabbreviatedAncestorAxis
	specificationDocument allNodesDo: [:node |
		"selects all div ancestors of the context node"
		self
			assertNodeSet: (node xpath: 'ancestor::div')
			hasNodes:
				(node ancestorElements select: [:each |
					each isNamed: 'div'])]