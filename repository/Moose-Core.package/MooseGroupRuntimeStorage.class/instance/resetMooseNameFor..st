private
resetMooseNameFor: anEntity
	anEntity hasUniqueMooseNameInModel
		ifTrue: [
			byName removeKey: anEntity mooseName asSymbol ifAbsent: [ ].
			super resetMooseNameFor: anEntity.
			byName at: anEntity mooseName asSymbol put: anEntity ]
		ifFalse: [ super resetMooseNameFor: anEntity ]