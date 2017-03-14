tests
testElementAtIfAbsent
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
					self assert:
						(node
							elementAt: localName
							ifAbsent: [self fail]) =
								(elements detect: [:each | each localName = localName]).
					self assert:
						(node
							elementAt: 'absent:', localName
							ifAbsent: [#absent]) = #absent].
				qualifiedNames do: [:qualifiedName |
					self assert:
						(node
							elementAt: qualifiedName
							ifAbsent: [self fail]) =
								(elements detect: [:each |
									each hasPrefix
										and: [each name = qualifiedName]])].
			self assert:
				(node
					elementAt: 'absent'
					ifAbsent: [#absent]) = #absent]]