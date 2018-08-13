*Ring2-Monticello
asMCDefinition

	^ MCClassDefinition 
		name: self name
		superclassName: (self superclass ifNil: [ 'nil' ] ifNotNil: [ :aSuperclass | aSuperclass name ])
		traitComposition: self owner traitCompositionString 
		classTraitComposition: self owner metaclass traitCompositionString
		category: self category 
		instVarNames: self instVarNames
		classVarNames: self classVarNames
		poolDictionaryNames: self sharedPoolNames
		classInstVarNames: self metaclass instVarNames
		type: self mcType
		comment: self comment content
		commentStamp: self comment stamp