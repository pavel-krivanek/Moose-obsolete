tests
testElementsAt
	self newNodeWithElements allNodesDo: [:node |
		node canHaveChildren
			ifTrue: [| elements localNames qualifiedNames |
				elements := node elements.
				localNames := (elements collect: [:each | each localName]) asSet.
				qualifiedNames :=
					(elements
						select: [:each | each hasPrefix]
						thenCollect: [:each | each name]) asSet.
				localNames do: [:localName |
					self
						assertList: (node elementsAt: localName)
						selects:
							(elements select: [:each |
								each localName = localName]).
					self
						assertList: (node elementsAt: 'absent:', localName)
						selects: elements copyEmpty].
				qualifiedNames do: [:qualifiedName |
					self
						assertList: (node elementsAt: qualifiedName)
						selects:
							(elements select: [:each |
								each hasPrefix
									and: [each name = qualifiedName]])].
			self
				assertList: (node elementsAt: 'absent')
				selects: elements copyEmpty]]