testing
testGetIndexOf
	| aCommentsCleaner |
	aCommentsCleaner := DudeCommentsCleaner new.
	self assert: (aCommentsCleaner getIndexOf: 'bla' in: '"bla"bla bla' startingAt: 1) equals: 6