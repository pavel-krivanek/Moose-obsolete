tests
testUnabbreviatedChildAxisChildAxis
	specificationDocument allNodesDo: [:node |
		"selects all para grandchildren of the context node"
		self
			assertNodeSet: (node xpath: 'child::*/child::para')
			hasNodes:
				(node canHaveChildren
					ifTrue: [| paras |
						paras := OrderedCollection new.
						node elementsDo: [:element |
							paras addAll:
								(element elementsAt: 'para')].
						paras]
					ifFalse: [#()])]