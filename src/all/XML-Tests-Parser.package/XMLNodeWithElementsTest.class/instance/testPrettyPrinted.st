tests
testPrettyPrinted
	| nodeWithElements printString prettyPrintString prettyNodeWithElements |

	nodeWithElements := self newNodeWithElements.
	"remove any whitespace formatting around elements
	(avoid #allNodesDo: because we're removing)"
	nodeWithElements allNodes do: [:each |
		(each isStringNode
			and: [each isWhitespace])
			ifTrue: [each parent removeNode: each]].

	printString := nodeWithElements printString.
	prettyPrintString := nodeWithElements prettyPrinted.
	self deny: printString = prettyPrintString.

	prettyNodeWithElements :=
		(XMLDOMParser on: prettyPrintString)
			preservesCommentNodes: true;
			parseDocument.
	self
		assertElements: prettyNodeWithElements allElements
		werePrettyPrintFormattedFrom: nodeWithElements allElements.