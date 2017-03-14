testing
testContainsEndCommentButNoStart
	| aCommentsCleaner |
	aCommentsCleaner := DudeCommentsCleaner new.
	self
		assert: (aCommentsCleaner containsComments: 'a = b + 2; this is the end of a comment*/' wasOpenComment: False)
		equals: False