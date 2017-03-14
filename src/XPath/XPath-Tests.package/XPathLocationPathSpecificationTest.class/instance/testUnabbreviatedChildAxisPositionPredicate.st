tests
testUnabbreviatedChildAxisPositionPredicate
	specificationDocument allNodesDo: [:node | | paras |
		paras :=
			node canHaveChildren
				ifTrue: [node elementsAt: 'para']
				ifFalse: [#()].

		"selects the first para child of the context node"
		self
			assertNodeSet: (node xPath: 'child::para[position()=1]')
			hasNodes:
				(paras size > 0
					ifTrue: [Array with: paras first]
					ifFalse: [#()]).

		"selects the last para child of the context node"
		self
			assertNodeSet: (node xPath: 'child::para[position()=last()]')
			hasNodes:
				(paras size > 0
					ifTrue: [Array with: paras last]
					ifFalse: [#()]).

		"selects the last but one para child of the context node"
		self
			assertNodeSet: (node xPath: 'child::para[position()=last()-1]')
			hasNodes:
				(paras size > 1
					ifTrue: [Array with: (paras at: paras size - 1)]
					ifFalse: [#()]).

		"selects all the para children of the context node other than
		the first para child of the context node"
		self
			assertNodeSet: (node xPath: 'child::para[position()>1]')
			hasNodes:
				(paras size > 1
					ifTrue: [paras allButFirst]
					ifFalse: [#()])]