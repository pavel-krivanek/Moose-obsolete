testing
testContainsLineComment
	| aCommentsCleaner |
	aCommentsCleaner := DudeCommentsCleaner new.
	self assert: (aCommentsCleaner containsComments: 'a = b; //this is a line comment' wasOpenComment: False) equals: True