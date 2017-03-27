tests
testAbbreviatedChildAxis
	specificationDocument allNodesDo: [:node |
		"selects the para element children of the context node"
		self
			assertNodeSet: (node xpath: 'para')
			hasNodes:
				(node canHaveChildren
					ifTrue: [node elementsAt: 'para']
					ifFalse: [#()]).

		"selects all element children of the context node"
		self
			assertNodeSet: (node xpath: '*')
			hasNodes:
				(node canHaveChildren
					ifTrue: [node elements]
					ifFalse: [#()]).

		"selects all text node children of the context node"
		self
			assertNodeSet: (node xpath: 'text()')
			hasNodes:
				(node canHaveChildren
					ifTrue: [node stringNodes]
					ifFalse: [#()]).

		"selects all the children of the context node, whatever their node type"
		self
			assertNodeSet: (node xpath: 'node()')
			hasNodes:
				(node canHaveChildren
					ifTrue: [node nodes]
					ifFalse: [#()])]