tests
testElementAtAddedInPlace
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
						self assert:
							(node elementAt: localName) =
								(elements detect: [:each | each localName = localName])].
					qualifiedNames do: [:qualifiedName |
						self assert:
							(node elementAt: qualifiedName) =
								(elements detect: [:each |
									each hasPrefix
										and: [each name = qualifiedName]])]]]]