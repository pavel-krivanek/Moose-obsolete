pointer layout
slotsFor: anRGLayout do: aBlock
	| realClass |
	realClass := self realBehaviorFor: anRGLayout parent.
	realClass classLayout slots
		do: [ :each | 
			| def |
			def := self
				definitionFor: each
				ifAbsentRegister: [ each asRingMinimalDefinitionIn: anRGLayout environment ].
			aBlock value: def ]