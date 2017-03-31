invoking
function
	| node |

	node :=
		self hasArguments
			ifTrue: [self firstArgument firstInDocumentOrder]
			ifFalse: [self contextNode].

	(node notNil
		and: [node hasExpandedName])
		ifTrue: [^ node namespaceURI]
		ifFalse: [^ '']