invoking
function
	| node |

	node :=
		self hasArguments
			ifTrue: [self firstArgument firstInDocumentOrder]
			ifFalse: [self contextNode].

	(node notNil
		and: [node hasExpandedName])
		ifTrue: [| namespaceURI |
			(self context hasNamespaces
				and: [(namespaceURI := node namespaceURI) notEmpty
					and: [node hasPrefix]])
				ifTrue: [
					((self context resolvePrefixesOfNamespaceURI: namespaceURI)
						ifEmpty: [^ node localName]
						ifNotEmpty: [:prefixes |
							^ node localName qualifyWithXMLPrefix: prefixes anyOne])]
				ifFalse: [^ node name]]
		ifFalse: [^ ''].