testing
testCleanAllNoises
	| aText cleanedText cr lf spc tab |
	cr := String with: Character cr.
	lf := String with: Character lf.
	spc := String with: Character space.
	tab := String with: Character tab.
	aText := OrderedCollection new.
	aText add: tab , tab , 'as' , lf , cr , tab , 'df' , spc , lf.
	aText add: lf , lf , lf , cr , cr , cr , tab , tab , spc , spc , 'd' , cr , cr , 'fgf'.
	cleanedText := DudeWhiteSpaceCleaner new specificClean: aText.
	self assert: (cleanedText at: 1) equals: 'asdf'.
	self assert: (cleanedText at: 2) equals: 'dfgf'