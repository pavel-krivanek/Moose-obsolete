invoking
function
	| node |

	self hasArguments
		ifTrue: [node := self firstArgument firstInDocumentOrder]
		ifFalse: [node := self contextNode].

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