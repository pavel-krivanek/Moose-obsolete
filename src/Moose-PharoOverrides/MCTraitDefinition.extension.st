Extension { #name : #MCTraitDefinition }

{ #category : #'*Moose-PharoOverrides' }
MCTraitDefinition >> = aDefinition [

	"Moose override: issue not opened"

	self flag: #traits. "Ugly we harcoded the super superclass method.  We will have to refactor the definition hierarchy"
	
	^ (aDefinition isKindOf: MCDefinition)
		and: [(self isRevisionOf: aDefinition)
		and: [self traitCompositionString = aDefinition traitCompositionString
		and: [category = aDefinition category
		and: [comment = aDefinition comment
		and: [self sortedVariables = aDefinition sortedVariables]]]]]
]

{ #category : #'*Moose-PharoOverrides' }
MCTraitDefinition >> hash [

	"Moose override: issue not opened"

	| hash |
	hash := String stringHash: name initialHash: 0.
	hash := String stringHash: self traitCompositionString initialHash: hash.
	hash := String stringHash: (category ifNil: ['']) initialHash: hash.
	variables do: [ :v |
		hash := String stringHash: v name initialHash: hash ].
	
	^ hash

]
