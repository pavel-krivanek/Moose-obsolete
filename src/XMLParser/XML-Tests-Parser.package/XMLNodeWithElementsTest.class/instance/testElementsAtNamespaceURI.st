tests
testElementsAtNamespaceURI
	self newNodeWithElements allNodesDo: [:node |
		node canHaveChildren
			ifTrue: [| elements localNames qualifiedNames namespaceURIs |
				elements := node elements.
				localNames := (elements collect: [:each | each localName]) asSet.
				qualifiedNames :=
					(elements
						select: [:each | each hasPrefix]
						thenCollect: [:each | each name]) asSet.
				namespaceURIs := (elements collect: [:each | each namespaceURI]) asSet.
				localNames do: [:localName |
					namespaceURIs do: [:uri |
						self
							assertList:
								(node
									elementsAt: localName
									namespaceURI: uri)
							selects:
								(elements select: [:each |
									each localName = localName
										and: [each namespaceURI = uri]])].
					self
						assertList:
							(node
								elementsAt: localName
								namespaceURI: 'absentNS')
						selects: elements copyEmpty].
				qualifiedNames do: [:qualifiedName |
					namespaceURIs do: [:uri |
						self
							assertList:
								(node
									elementsAt: qualifiedName
									namespaceURI: uri)
							selects:
								(elements select: [:each |
									each hasPrefix
										and: [each name = qualifiedName
											and: [each namespaceURI = uri]]])].
					self
						assertList:
							(node
								elementsAt: qualifiedName
								namespaceURI: 'absentNS')
						selects: elements copyEmpty]]]