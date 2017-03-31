testing
testContainsCommentWithinString
	| aCommentsCleaner |
	aCommentsCleaner := DudeCommentsCleaner new.
	self
		assert: (aCommentsCleaner containsComments: 'a = b + "/*this is not a comment*/"' wasOpenComment: False)
		equals: True