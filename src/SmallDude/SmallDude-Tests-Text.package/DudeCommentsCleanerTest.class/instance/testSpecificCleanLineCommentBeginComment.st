testing
testSpecificCleanLineCommentBeginComment
	| aStringList aCommentsCleaner |
	aStringList := OrderedCollection new.
	aStringList add: 'sdfggfd'.
	aStringList add: 'asd //sg/*drg'.
	aCommentsCleaner := DudeCommentsCleaner new.
	aStringList := aCommentsCleaner specificClean: aStringList.
	self assert: (aStringList at: 2) equals: 'asd '