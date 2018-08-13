private
createBehavior: subclassName superclassName: superclassName instanceVariableNames: instanceVariableNames classVariableNames: classVariableNames categoryName: categoryName packageName: packageName poolDictionariesNames: poolDictionariesNames layoutClass: layoutClass layoutDefinition: layoutDefinition slotsDefinition: slotsDefinition traits: traitsDefinition isTrait: isTrait hasNilSuperclass: hasNilSuperclass

	| behavior superclass |
	
	self assert: subclassName notNil.	
		
	isTrait 
		ifTrue: [ 
			superclass := nil.
			behavior := (subclassName endsWith: ' classTrait') 
				ifTrue: [ 
					self environment ensureMetaclassTraitNamed: subclassName ]
				ifFalse: [ 
					self assert: (superclassName = #Trait).
					self environment ensureTraitNamed: subclassName ]]
		ifFalse: [ 
			behavior := self environment ensureClassNamed: subclassName. 
			hasNilSuperclass
				ifTrue: [ behavior superclass: nil. ]
				ifFalse: [
					superclassName ifNotNil: [ 
						| theSuperclass | 
						theSuperclass := self environment ensureClassNamed: superclassName. 
						behavior superclass: theSuperclass ] ] ].

	isTrait ifFalse: [ 
		layoutClass ifNotNil: [ 
			behavior layout: (layoutClass parent: behavior).
			"TODO: unknown layout definition"]].

	slotsDefinition ifNotNil: [ 
		behavior layout: (layoutClass parent: behavior).
		slotsDefinition children do: [:child |
			| newSlot | 
			newSlot := (child isLiteralNode and: [ child value isSymbol ])
				ifTrue: [ RGInstanceVariableSlot named: child value parent: behavior layout ]
				ifFalse: [
					"TODO: probably needs more robust analysis"
					self assert: child isMessage.
					(RGUnknownSlot named: (self slotNameFor: child) parent: behavior layout)
						expression: child formattedCode;
						yourself].
			behavior layout addSlot: newSlot] .].

	"process instance variables after layout and slots"
	instanceVariableNames ifNotNil: [ 
		behavior instanceVariables: (instanceVariableNames substrings collect: #asSymbol)].

	classVariableNames ifNotNil: [ 
		behavior classVariables: (classVariableNames substrings collect: #asSymbol) ].

	poolDictionariesNames ifNotNil: [ 
		behavior sharedPools: (poolDictionariesNames substrings collect: #asSymbol)].

	categoryName ifNotNil: [ 
		behavior category: categoryName ].

	packageName ifNotNil: [ 
		| pkg |
		pkg := environment ensurePackageNamed: packageName.
		behavior package: pkg ].

	traitsDefinition ifNotNil: [ 
		| composition transformations |
		composition := RGTraitComposition parent: behavior.
		transformations := RGTraitCompositionVisitor new parse: traitsDefinition for: composition.
		behavior traitComposition: composition.
		transformations do: [ :each |
			composition addTransformation: each ].
		].
	