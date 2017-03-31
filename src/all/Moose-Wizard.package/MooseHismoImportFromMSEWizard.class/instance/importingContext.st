private
importingContext

	| importingContext contextSelected useFilter |
	
	useFilter := wizardInformations at: #useFilter.
	useFilter first value ifFalse: [ ^ nil ].
	
	contextSelected := (wizardInformations at: #contextSelected) 
		select: [ :each | each value ] thenCollect: [ :each | each key asSymbol ].
	
	"importingContext := FAMIXStandardImportingContext new.
	importingContext importAll: contextSelected."
	
	importingContext := MooseImportingContext new.
	importingContext entityKindsToBeExtracted: contextSelected.
	
	^ importingContext