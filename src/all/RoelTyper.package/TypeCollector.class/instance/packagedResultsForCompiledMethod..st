accessing
packagedResultsForCompiledMethod: aCompiledMethod
	| results arr tmpNames numberOfTemporaryVariables |
	results := IdentityDictionary new.
	arr := (localTypingResults at: aCompiledMethod).
	tmpNames := [aCompiledMethod methodNode tempNames] on: Error do: [aCompiledMethod tempNames].
	
	"Note we are here voluntary excluding temporary variables that may be contained in a block contained in the compiled method. This has to be fixed somehow"
	numberOfTemporaryVariables := (arr size - 1) min: tmpNames size.
	1 to: numberOfTemporaryVariables do: [:i | results at: (tmpNames at: i) put: (arr at: i)].
	results at: ('^') put: (arr last).	 
	^results