testing
testContainsEndCommentStartOnSameLine
	| aCommentsCleaner |
	aCommentsCleaner := DudeCommentsCleaner new.
	self assert: (aCommentsCleaner containsComments: 'a = b + 2; /*this is a comment*/' wasOpenComment: False) equals: True