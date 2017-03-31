testing
testSpecificCleanSlashStarBeforeString
	| aStringList aCommentsCleaner |
	aStringList := OrderedCollection new.
	aStringList add: 'sdfggfd'.
	aStringList add: 'as/*d "sg/*drg" as/*dasd'.
	aStringList add: 'asd*/as*/'.
	aCommentsCleaner := DudeCommentsCleaner new.
	aStringList := aCommentsCleaner specificClean: aStringList.
	self assert: (aStringList at: 1) equals: 'sdfggfd'.
	self assert: (aStringList at: 2) equals: 'as'.
	self assert: (aStringList at: 3) equals: 'as*/'