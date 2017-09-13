retrieving
allShowableElementsInModel: aModel
	| queue priority |
	queue := OrderedCollection new.
	priority := {OPUMLPackage -> 1.
	OPUMLModel -> 1.
	OPUMLProfile -> 1.
	OPUMLClass -> 2.
	OPUMLStereotype -> 3} asDictionary.
	queue addAll: aModel packagedElements.
	aModel packagedElements
		select: [ :each | (each isKindOf: OPUMLClass) | (each isKindOf: OPUMLStereotype) ]
		thenDo: [ :each | 
			each generalizations
				do: [ :gen | 
					queue addIfNotPresent: gen general.
					queue add: gen ].
			(each ownedAttributes select: [ :attr | attr association isNotNil ])
				do: [ :attr | queue addIfNotPresent: attr association ] ].
	aModel packagedElements
		select: [ :each | each isKindOf: OPUMLStereotype ]
		thenDo: [ :each | 
			each ownedAttributes
				select: [ :attr | attr association isNotNil and: [ attr association isKindOf: OPUMLExtension ] ]
				thenDo: [ :attr | queue add: attr type ] ].
	queue
		removeAllSuchThat: [ :each | 
			(each isKindOf: OPUMLAssociation)
				and: [ each memberEnds anySatisfy: [ :membEnd | (queue includes: membEnd type) not ] ] ].
	^ (queue asSet asArray
		sorted:
			[ :a :b | (priority at: a class ifAbsent: [ 100 ]) < (priority at: b class ifAbsent: [ 100 ]) ])
		select: [ :each | self hasSupportForModel: each ]