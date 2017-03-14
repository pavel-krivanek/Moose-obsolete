testing
testSpecificCleanSlashSlashBeforeString
	| aStringList aCommentsCleaner |
	aStringList := OrderedCollection new.
	aStringList add: 'sdfggfd'.
	aStringList add: 'a//sd "sg//drg" asd//asd'.
	aStringList add: 'asdas*/'.
	aCommentsCleaner := DudeCommentsCleaner new.
	aStringList := aCommentsCleaner specificClean: aStringList.
	self assert: (aStringList at: 1) equals: 'sdfggfd'.
	self assert: (aStringList at: 2) equals: 'a'.
	self assert: (aStringList at: 3) equals: 'asdas*/'