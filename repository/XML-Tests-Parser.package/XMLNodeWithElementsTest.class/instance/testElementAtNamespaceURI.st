tests
testElementAtNamespaceURI
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
						self assert:
							(node
								elementAt: localName
								namespaceURI: uri) =
									(elements detect: [:each |
										each localName = localName
											and: [each namespaceURI = uri]])].
					self assert:
						(node
							elementAt: localName
							namespaceURI: 'absentNS') isNil].
				qualifiedNames do: [:qualifiedName |
					namespaceURIs do: [:uri |
						self assert:
							(node
								elementAt: qualifiedName
								namespaceURI: uri) =
									(elements detect: [:each |
										each hasPrefix
											and: [each name = qualifiedName
												and: [each namespaceURI = uri]]])].
					self assert:
						(node
							elementAt: qualifiedName
							namespaceURI: 'absentNS') isNil]]]