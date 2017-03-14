tests
testUnabbreviatedDescendantOrSelfAxis
	specificationDocument allNodesDo: [:node |
		"selects the para element descendants of the context node and, if
		the context node is a para element, the context node as well"
		self
			assertNodeSet: (node xPath: 'descendant-or-self::para')
			hasNodes:
				(node canHaveChildren
					ifTrue: [node allElementsNamed: 'para']
					ifFalse: [#()])]