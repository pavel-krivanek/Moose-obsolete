tests
testElementsAtAddedInPlace
	self newNodeWithElements allNodesDo: [:node |
		node canHaveChildren
			ifTrue: [
				(Array
					with: node elements
					with: node elements reversed) do: [:elements | | localNames qualifiedNames |
					localNames := (elements collect: [:each | each localName]) asSet.
					qualifiedNames :=
						(elements
							select: [:each | each hasPrefix]
							thenCollect: [:each | each name]) asSet.
					node addNodes: elements.
					localNames do: [:localName |
						self
							assertList: (node elementsAt: localName)
							selects:
								(elements select: [:each |
									each localName = localName])].
					qualifiedNames do: [:qualifiedName |
						self
							assertList: (node elementsAt: qualifiedName)
							selects:
								(elements select: [:each |
									each hasPrefix
										and: [each name = qualifiedName]])]]]]