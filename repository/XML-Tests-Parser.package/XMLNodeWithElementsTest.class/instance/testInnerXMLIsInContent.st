tests
testInnerXMLIsInContent
	| node parser |

	node := self newNodeWithElements.
	parser := XMLDOMParser on: '<content/>'.
	self deny: parser isInContent.

	node innerXMLParsedWith: parser.
	self
		assert: node nodes size = 1;
		assert: (node firstNode isElementNamed: 'content');
		deny: node firstNode hasChildren;
		assert: parser isInContent.