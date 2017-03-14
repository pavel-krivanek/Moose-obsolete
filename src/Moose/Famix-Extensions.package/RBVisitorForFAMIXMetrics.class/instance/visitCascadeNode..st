enumerating
visitCascadeNode: aCascadeNode 
	
	numberOfStatements := numberOfStatements + aCascadeNode messages size.
	^super visitCascadeNode: aCascadeNode 