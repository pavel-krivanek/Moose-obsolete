private
processSlot: aSlot in: aClass
	| prop |
	
	(aSlot isKindOf: FMRelationSlot) ifFalse: [
		^ self ].

	prop := elements add: aSlot mooseProperty.

	typeDict at: prop put: aSlot targetClass.
	mmClassDict at: prop put: aClass.
	oppositeDict at: prop put: aSlot inverseName.
	
	aClass methodDict at: aSlot name asSymbol ifPresent: [:aMethod | 
		prop setImplementingSelector: aMethod selector.
		(Pragma inMethod: aMethod named: #package:) ifNotNil: [ :p | 
			| packageName |
			packageName := p argumentAt: 1.
			(self allowPackageNamed: packageName)
				ifFalse: [ ^ self ].
			packPropDict at: prop put: packageName ].

	aClass primaryContainerTrait ifNotNil: [:aPrimaryContainerTrait |
		(aPrimaryContainerTrait potentialPrimaryContainer = aSlot name)
			ifTrue: [  prop isContainer: true  ] ].
	"(Pragma inMethod: aMethod named: #container) ifNotNil: [ prop isContainer: true ]."

	(Pragma inMethod: aMethod named: #derived) ifNotNil: [ prop isDerived: true ].
	(Pragma inMethod: aMethod named: #source) ifNotNil: [ prop isSource: true ].
	(Pragma inMethod: aMethod named: #target) ifNotNil: [ prop isTarget: true ]. 
	(Pragma inMethod: aMethod named: #multivalued)
		ifNotNil: [ prop isMultivalued: true ].
	(Pragma inMethod: aMethod named: #key:)
		ifNotNil: [ prop key: ((Pragma inMethod: aMethod named: #key:) argumentAt: 1) ].	
].
	elements add: prop.
	^ prop.
		