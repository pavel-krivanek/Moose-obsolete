testing
testCleanOneTab
	| aText cleanedText |
	aText := OrderedCollection new.
	aText add: 'as	df'.
	aText add: 'dfgf'.
	cleanedText := DudeWhiteSpaceCleaner new specificClean: aText.
	self assert: (cleanedText at: 1) equals: 'asdf'.
	self assert: (cleanedText at: 2) equals: 'dfgf'