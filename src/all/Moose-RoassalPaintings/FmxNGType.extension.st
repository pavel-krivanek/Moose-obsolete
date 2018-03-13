Extension { #name : #FmxNGType }

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> abstractMethods [
	"Used for the class blueprint
	Alexandre.Bergel 3/28/2009 12:10"
	^ self methods select: #isAbstract
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> abstractMethodsGroup [
	<navigation: 'Abstract methods'>
	
	^ FAMIXMethodGroup 	withAll: (self abstractMethods)
							withDescription: 'Abstract methods in ', self name
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> accessorMethods [
	
	^ self methods select: #isPureAccessor
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> accessorMethodsGroup [
	<navigation: 'Accessor methods'>
	
	^ FAMIXMethodGroup 	withAll: (self accessorMethods)
							withDescription: 'Pure accessors in ', self name
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> constantMethods [
	"Used for the class blueprint
	Alexandre.Bergel 3/28/2009 12:10"
	^ self methods select: #isConstant
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> constructors [
	"Used for the class blueprint
	Alexandre.Bergel 3/28/2009 12:10"
	^ self methods select: #isConstructor
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> externalFanin [

	^ self clientClassesOutOfMyPackage size
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> externalFanout [

	^ self providerClassesOutOfMyPackage size
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> fanRatio [

	^ self fanIn / (self fanIn + self fanOut)
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> fanTotal [

	^ self fanIn + self fanOut
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> fanType [

	^ self externalFanin >= self internalFanin
			ifTrue: [
				self externalFanout >= self internalFanout
					ifTrue: [#eFieFo]
					ifFalse: [#eFiiFo]]
			ifFalse: [
				self externalFanout >= self internalFanout
					ifTrue: [#iFieFo]
					ifFalse: [#iFiiFo]]
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> faninBalance [

	| fanin |
	fanin := self fanIn.
	^ fanin = 0 	ifTrue: [0]
					ifFalse: [(self externalFanin - self internalFanin) / self fanIn]
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> fanoutBalance [

	^ (self externalFanout - self internalFanout) / self fanOut
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> getterMethods [
	"Used for the class blueprint
	Alexandre.Bergel 3/28/2009 12:10"
	^ self methods select: #isGetter
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> implementationMethods [
	^ self methods select: #isInternalImplementation
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> initializers [

	^ self methods select: #isInitializer
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> interfaceMethods [
	^ self methods select: [:each | each isInternalImplementation not & each isInitializer not & each isPureAccessor not]
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> internalFanin [

	^ self clientClassesIntoMyPackage size
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> internalFanout [

	^ self providerClassesIntoMyPackage size
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> internalInvocations [

	^ self outgoingInvocationsGroup select: [:each | 
				each candidates anySatisfy: [:c|
					c belongsTo == self ]].

]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> internalLayerInvocations [

	^ self outgoingInvocationsGroup select: [:each | 
			each sender isInternalImplementation and: [ "internal sender"
				each candidates anySatisfy: [:cand|
					cand belongsTo == self and: [ "class candidate"
						each sender ~= cand and: [ "no recursive call"
							cand isInternalImplementation ]]]]] "internal candidate"

]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> overridingMethods [
	"Used for the class blueprint
	Alexandre.Bergel 3/28/2009 12:10"
	^ self methods select: #isOverriding
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> setterMethods [
	"Used for the class blueprint
	Alexandre.Bergel 3/28/2009 12:10"
	^ self methods select: #isSetter
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> viewBlueprint [
	<menuItem: 'Class blueprint' category: 'Visualize'>
	| view |
	view := RTView new.
	view @ RTDraggableView.
	self viewBlueprintOn: view.
	^ view open
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> viewBlueprintOn: view [
	^ FAMIXClassBlueprint new view: self on: view
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> viewHierarchyOn: view [
	| hierarchy |
	hierarchy :=		(self withDeepCollect: [:each | each directSubclasses]), 
						(self deepCollect: [:each | each directSuperclasses reject: [:c | c isInterface]]).
	hierarchy asMooseGroup 
		viewSimpleSystemComplexityWithSelection: { self } 
		height: [ :c | c numberOfMethods ] 
		width: [ :c | c numberOfAttributes ] 
		color: [ :c | c numberOfLinesOfCode ] 
		on: view.

]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> viewTypeNestingGraphOn: view [
	| visitor |
	visitor := FAMIXAttributesGraphTraverser new .
	self accept: visitor.
	view nodes: visitor value graph nodes.
	view edges: visitor value graph nodes from: #yourself toAll: #nextNodes.
	view horizontalDominanceTreeLayout
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> viewUML [
	<menuItem: 'UML class diagram' category: 'Visualize'> 
	
	| view |
	view := RTUMLClassBuilder new.
	self viewUMLOn: view.
	^ view openWithToolbarEntitled: 'UML class diagram'
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> viewUMLOn: view [

	view
		addObjects: {self};
		classname: #name;
		instanceVariables: #attributes;
		methodsNames: #methods;
		methodselector: #name;
		superclass: nil
]
