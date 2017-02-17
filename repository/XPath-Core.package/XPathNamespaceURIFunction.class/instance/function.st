invoking
function
	| node |

	self hasArguments
		ifTrue: [node := self firstArgument firstInDocumentOrder]
		ifFalse: [node := self contextNode].

	(node notNil
		and: [node hasExpandedName])
		ifTrue: [^ node namespaceURI]
		ifFalse: [^ '']