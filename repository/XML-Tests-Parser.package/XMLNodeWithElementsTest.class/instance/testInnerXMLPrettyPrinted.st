tests
testInnerXMLPrettyPrinted
	| nodeWithElements printString prettyPrintString prettyNodeWithElements |

	nodeWithElements := self newNodeWithElements.
	"remove any whitespace formatting around elements
	(avoid descendantNodesDo: because we're removing)"
	nodeWithElements descendantNodes do: [:each |
		(each isStringNode
			and: [each isWhitespace])
			ifTrue: [each parent removeNode: each]].

	printString := nodeWithElements innerXML.
	prettyPrintString := nodeWithElements innerXMLPrettyPrinted.
	self deny: printString = prettyPrintString.

	prettyNodeWithElements :=
		(XMLDOMParser on: prettyPrintString)
			preservesCommentNodes: true;
			parseDocument.
	self
		assertElements: prettyNodeWithElements descendantElements
		werePrettyPrintFormattedFrom: nodeWithElements descendantElements