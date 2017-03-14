tests
testPreservesCDataNodes
	| parser |

	parser := XMLDOMParser on: self addressBookXML.
	self
		deny: parser preservesCDataNodes;
		assert: (parser preservesCDataNodes: true) == parser;
		assert: parser preservesCDataNodes;
		assert: (parser preservesCDataNodes: false) == parser;
		deny: parser preservesCDataNodes.