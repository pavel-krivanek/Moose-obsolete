testing
testCleanOneLF
	| aText cleanedText LF |
	LF := String with: Character lf.
	aText := OrderedCollection new.
	aText add: 'as' , LF , 'df'.
	aText add: 'dfgf'.
	cleanedText := DudeWhiteSpaceCleaner new specificClean: aText.
	self assert: (cleanedText at: 1) equals: 'asdf'.
	self assert: (cleanedText at: 2) equals: 'dfgf'