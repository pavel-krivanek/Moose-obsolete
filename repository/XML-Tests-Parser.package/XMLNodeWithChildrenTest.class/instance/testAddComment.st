tests
testAddComment
	| nodeWithNodes comment |

	nodeWithNodes := self newNode.
	comment := nodeWithNodes addComment: 'test'.
	self
		assert: nodeWithNodes nodes size = 1;
		assert: nodeWithNodes firstNode == comment;
		assert: comment isComment;
		assert: comment string = 'test'.