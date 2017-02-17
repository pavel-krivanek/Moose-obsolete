testing
testCleanCRLF
	| aText cleanedText noise |
	noise := String with: Character cr with: Character lf.
	aText := OrderedCollection new.
	aText add: 'as' , noise , 'df' , noise.
	aText add: noise , 'dfgf'.
	cleanedText := DudeWhiteSpaceCleaner new specificClean: aText.
	self assert: (cleanedText at: 1) equals: 'asdf'.
	self assert: (cleanedText at: 2) equals: 'dfgf'