tests
testUnabbreviatedAncestorOrSelfAxis
	specificationDocument allNodesDo: [:node |
		"selects the div ancestors of the context node and, if the context node is
		a div element, the context node as well"
		self
			assertNodeSet: (node xPath: 'ancestor-or-self::div ')
			hasNodes:
				((node ancestorNodes copyWith: node) select: [:each |
					each isElementNamed: 'div'])]