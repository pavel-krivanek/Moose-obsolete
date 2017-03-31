public interface
entityNamed: aSymbol withType: aFamixType
	 
	^self 
		entityNamed: aSymbol 
		withType: aFamixType
		ifAbsent: [nil]