initialize-release
initialize: entitySpecie from: entityList 
	 
	| aCleaner | 
	codeBase := IdentityDictionary new. 
	observer start: entityList size. 
	aCleaner := entitySpecie cleaners. 
	entityList 
		do: 
			[:entity |  
			| codeLines | 
			observer increment. 
			codeLines := self codeLinesFor: entity withCleaner: aCleaner. 
			entitySpecie 
				attachInformationTo: codeLines 
				from: self mooseModel. 
			codeBase at: entity put: codeLines]. 
	observer stop. 
	^self