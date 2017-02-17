testing
testContainsStartComment
	| aCommentsCleaner |
	aCommentsCleaner := DudeCommentsCleaner new.
	self
		assert: (aCommentsCleaner containsComments: 'a = b + 2; /*this is the begining of a comment' wasOpenComment: False)
		equals: True