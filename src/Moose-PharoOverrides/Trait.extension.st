Extension { #name : #Trait }

{ #category : #'*Moose-PharoOverrides' }
Trait >> asClassDefinition [

	"Moose override: issue not opened"

	self usesSpecialVariables ifFalse: [  
		^ MCTraitDefinition
			name: self name
			traitComposition: self traitCompositionString
			category: self category 
			instVarNames: self instVarNames
			classInstVarNames: self classSide slotNames
			comment: self organization classComment asString
			commentStamp: self organization commentStamp ].
		
	^ MCTraitDefinition
			name: self name
			traitComposition: self traitCompositionString
			category: self category 
			instVarNames: (self localSlots collect: #definitionString)
			classInstVarNames: self classSide slotNames
			comment: self organization classComment asString
			commentStamp: self organization commentStamp.
		
]
