tests
testPreservesCommentNodes
	| parser |

	parser := XMLDOMParser on: self addressBookXML.
	self
		deny: parser preservesCommentNodes;
		assert: (parser preservesCommentNodes: true) == parser;
		assert: parser preservesCommentNodes;
		assert: (parser preservesCommentNodes: false) == parser;
		deny: parser preservesCommentNodes.