tests
testNewComment
	| comment |

	comment := self newFactory newComment: 'test'.
	self
		assert: comment class == XMLComment;
		assert: comment string = 'test'.