testing
testCleanOneSpace
	| aText |
	aText := OrderedCollection new.
	aText add: 'asdf'.
	aText add: 'df gf'.
	self assert: ((DudeWhiteSpaceCleaner new specificClean: aText) at: 2) equals: 'dfgf'