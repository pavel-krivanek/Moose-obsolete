tests
testAbbreviatedChildAxisDescendantAxis
	specificationDocument allNodesDo: [:node |
		"selects the para element descendants of the chapter element children
		of the context node"
		self
			assertNodeSet: (node xPath: 'chapter//para')
			hasNodes:
				(node canHaveChildren
					ifTrue: [| paras |
						paras := OrderedCollection new.
						node
							elementsAt: 'chapter'
							do: [:each |
								paras addAll:
									(each descendantElementsNamed: 'para')].
						paras]
					ifFalse: [#()])]