tests
testNewComment
	| comment |

	comment := self newNode newComment: 'test'.
	self
		assert: comment isComment;
		assert: comment string = 'test'.