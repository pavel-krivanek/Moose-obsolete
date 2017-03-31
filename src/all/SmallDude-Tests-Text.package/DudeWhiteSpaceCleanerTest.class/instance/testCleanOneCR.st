testing
testCleanOneCR
	| aText cleanedText CR |
	CR := String with: Character cr.
	aText := OrderedCollection new.
	aText add: 'as' , CR , 'df'.
	aText add: 'dfgf'.
	cleanedText := DudeWhiteSpaceCleaner new specificClean: aText.
	self assert: (cleanedText at: 1) equals: 'asdf'.
	self assert: (cleanedText at: 2) equals: 'dfgf'