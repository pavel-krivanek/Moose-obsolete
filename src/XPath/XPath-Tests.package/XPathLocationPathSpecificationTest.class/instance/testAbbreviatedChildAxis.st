tests
testAbbreviatedChildAxis
	specificationDocument allNodesDo: [:node |
		"selects the para element children of the context node"
		self
			assertNodeSet: (node xPath: 'para')
			hasNodes:
				(node canHaveChildren
					ifTrue: [node elementsAt: 'para']
					ifFalse: [#()]).

		"selects all element children of the context node"
		self
			assertNodeSet: (node xPath: '*')
			hasNodes:
				(node canHaveChildren
					ifTrue: [node elements]
					ifFalse: [#()]).

		"selects all text node children of the context node"
		self
			assertNodeSet: (node xPath: 'text()')
			hasNodes:
				(node canHaveChildren
					ifTrue: [node stringNodes]
					ifFalse: [#()]).

		"selects all the children of the context node, whatever their node type"
		self
			assertNodeSet: (node xPath: 'node()')
			hasNodes:
				(node canHaveChildren
					ifTrue: [node nodes]
					ifFalse: [#()])]