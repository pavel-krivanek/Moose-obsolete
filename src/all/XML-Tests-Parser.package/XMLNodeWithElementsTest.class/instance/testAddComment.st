tests
testAddComment
	| nodeWithElements comment |

	super testAddComment.

	(nodeWithElements := self newNode)
		nodeFactory:
			(XMLPluggableNodeFactory new
				commentClass: XMLFComment).
	comment := nodeWithElements addComment: 'test'.
	self
		assert: nodeWithElements nodes size = 1;
		assert: nodeWithElements firstNode == comment;
		assert: comment class == XMLFComment;
		assert: comment string = 'test'.