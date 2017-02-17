getting classes
isVariableAClass: aSymbol
	"self isVariableAClass: self name"

	"returns true if aSymbol represents a Class"
	aSymbol size = 0 ifTrue: [^false].
	aSymbol first isLowercase ifTrue: [^false].
	^ (Smalltalk at: aSymbol) isBehavior
	
	"aString asQualifiedReference bindingOrNil
		ifNil:
			[Root allClasses anySatisfy: [:each | each name asString = aString]]
		ifNotNil: [aString asQualifiedReference bindingOrNil isForClass]"