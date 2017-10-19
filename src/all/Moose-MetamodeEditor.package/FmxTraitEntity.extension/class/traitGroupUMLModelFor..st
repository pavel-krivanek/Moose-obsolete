*Moose-MetamodeEditor
traitGroupUMLModelFor: model

	"return OPUMLModel for given traits group"
	
	"model := FmxTInvocable traitGroupUMLModel.
project := OPProject new
		name: 'Simple Association';
		addModel: model;
		yourself.
	OPHiddenWorkbench  openProject: project"
	
	| group elementsDictionary relationsDictionary assocs packagedElements usedSlots |
	
	group := self traitsGroup.
	
	elementsDictionary := Dictionary new.
	relationsDictionary := Dictionary new.
	group do: [ :eachTrait |
		| traitElement |
		traitElement := OPUMLClass new name: eachTrait name. 
		elementsDictionary at: eachTrait put: traitElement. ].

	elementsDictionary associationsDo: [ :elementAssociation |
		| traitElement realTrait |
		traitElement := elementAssociation value.
		realTrait := elementAssociation key.
		
		realTrait slots do: [ :aSlot |
			| property |
			property := OPUMLProperty new.
			property name: aSlot name.
			property owningClass: traitElement.
			
			aSlot isFMRelationSlot ifTrue: [ 
				| targetElement |
				targetElement := elementsDictionary at: aSlot targetClass.
				property type: targetElement. 
				property upperValue: (
					aSlot isToOneSlot 
						ifTrue: [ OPUMLLiteralInteger new value: 0 ]
						ifFalse: [ OPUMLLiteralUnlimitedNatural new value: '*']).
				property lowerValue: (
					aSlot inverseSlot isToOneSlot 
						ifTrue: [ OPUMLLiteralInteger new value: 0 ]
						ifFalse: [ OPUMLLiteralUnlimitedNatural new value: '*']).
				relationsDictionary at: aSlot put: property. ]]].

	assocs := OrderedCollection new.

	usedSlots := Set new.
	elementsDictionary associationsDo: [ :elementAssociation |
		| realTrait |
		realTrait := elementAssociation key.
		realTrait slots do: [ :aSlot |
			(aSlot isFMRelationSlot 
				and: [(usedSlots includes: aSlot ) not
				and: [ (usedSlots includes: aSlot inverseSlot) not ] ]) 
					ifTrue: [ 
						| association |
						usedSlots add: aSlot.
						association := OPUMLAssociation new. 
						association memberEnds: {
							relationsDictionary at: aSlot.
							relationsDictionary at: aSlot inverseSlot } asOrderedCollection.
						assocs add: association ]] ].

	packagedElements := model packagedElements.
	elementsDictionary associationsDo: [ :elementAssociation |
		packagedElements add: elementAssociation value.].

	packagedElements addAll: assocs.

	model packagedElements: packagedElements asOrderedCollection.
	
	^ elementsDictionary values, assocs