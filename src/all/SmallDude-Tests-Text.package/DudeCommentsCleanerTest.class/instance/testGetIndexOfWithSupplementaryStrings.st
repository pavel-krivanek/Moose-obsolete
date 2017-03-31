testing
testGetIndexOfWithSupplementaryStrings
	| aCommentsCleaner |
	aCommentsCleaner := DudeCommentsCleaner new.	"A string before the searched text and another one after"
	self assert: (aCommentsCleaner getIndexOf: 'bla' in: '"bubu"bla "bla"' startingAt: 1) equals: 7