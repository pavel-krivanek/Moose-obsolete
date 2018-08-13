private
classDefinition: aString with: chgRec
	| tokens theClass superclass |
	
	tokens := self scannedSource: aString.

	theClass := self classNamed: tokens third.
	theClass metaclass makeResolved.
	superclass := self classNamed: tokens first.
	superclass metaclass makeResolved.
	theClass superclass: superclass.
	theClass metaclass superclass: superclass metaclass.
	
	theClass cleanClassVariables.
	theClass cleanSharedPools.
	
	"theClass definitionSource: aString."
	
	theClass category: tokens last.
	
	tokens size = 11
	ifTrue:[ 
		theClass instanceVariables: (tokens fifth findTokens: ' ');
			 	classVariables: (tokens seventh findTokens: ' ');
				 sharedPools: (tokens ninth findTokens: ' ') ].
	
	tokens size = 13
	ifTrue:[
		RGTraitCompositionVisitor new parse: (tokens fifth) for: theClass traitComposition.
		theClass 
			instanceVariables: (tokens seventh findTokens: ' ');
			classVariables: (tokens ninth findTokens: ' ');
			sharedPools: ((tokens at: 11) findTokens: ' '). ].