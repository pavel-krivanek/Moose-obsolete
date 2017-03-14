tests
testNewComment
	| comment |
	
	super testNewComment.

	comment := self newFactoryWithClasses newComment: 'test'.
	self
		assert: comment class == self commentClass;
		assert: comment string = 'test'.