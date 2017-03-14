testing
testSpecificCleanSlashStarWithinString
	| aStringList aCommentsCleaner |
	aStringList := OrderedCollection new.
	aStringList add: 'sdfggfd'.
	aStringList add: 'asd "sg/*drg" asdasd'.
	aStringList add: 'asdas*/'.
	aCommentsCleaner := DudeCommentsCleaner new.
	aStringList := aCommentsCleaner specificClean: aStringList.
	self assert: (aStringList at: 1) equals: 'sdfggfd'.
	self assert: (aStringList at: 2) equals: 'asd "sg/*drg" asdasd'.
	self assert: (aStringList at: 3) equals: 'asdas*/'