testing
testSpecificCleanLineCommentBeginCommentEndCommentOnNextLine
	| aStringList aCommentsCleaner |
	aStringList := OrderedCollection new.
	aStringList add: 'sdfggfd'.
	aStringList add: 'asd //sg/*drg'.
	aStringList add: 'asdas*/'.
	aCommentsCleaner := DudeCommentsCleaner new.
	aStringList := aCommentsCleaner specificClean: aStringList.
	self assert: (aStringList at: 2) equals: 'asd '.
	self assert: (aStringList at: 3) equals: 'asdas*/'