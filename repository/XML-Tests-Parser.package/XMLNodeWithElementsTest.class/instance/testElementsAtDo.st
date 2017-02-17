tests
testElementsAtDo
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
						should: [:block | node elementsAt: localName do: block]
						enumerate:
							(elements select: [:each |
								each localName = localName]).
					self
						should: [:block | node elementsAt: 'absent:', localName do: block]
						enumerate: #()].
				qualifiedNames do: [:qualifiedName |
					self
						should: [:block | node elementsAt: qualifiedName do: block]
						enumerate:
							(elements select: [:each |
								each hasPrefix
									and: [each name = qualifiedName]])].
			self
				should: [:block | node elementsAt: 'absent' do: block]
				enumerate: #()]]