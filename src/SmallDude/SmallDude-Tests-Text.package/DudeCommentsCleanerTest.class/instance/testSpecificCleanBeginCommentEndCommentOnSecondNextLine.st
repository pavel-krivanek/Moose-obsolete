testing
testSpecificCleanBeginCommentEndCommentOnSecondNextLine
	| aStringList aCommentsCleaner |
	aStringList := OrderedCollection new.
	aStringList add: 'sdfggfd'.
	aStringList add: 'asd /*drg'.
	aStringList add: 'dfghdh'.
	aStringList add: 'asdas*/'.
	aCommentsCleaner := DudeCommentsCleaner new.
	aStringList := aCommentsCleaner specificClean: aStringList.
	self assert: (aStringList at: 2) equals: 'asd '.
	self assert: (aStringList at: 3) equals: ''.
	self assert: (aStringList at: 4) equals: ''