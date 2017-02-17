tests
testNewComment
	| nodeWithElements comment |

	super testNewComment.

	(nodeWithElements := self newNode)
		nodeFactory:
			(XMLPluggableNodeFactory new
				commentClass: XMLFComment).
	comment := nodeWithElements newComment: 'test'.
	self
		assert: comment class == XMLFComment;
		assert: comment string = 'test'.