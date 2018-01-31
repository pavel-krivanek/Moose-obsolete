Class {
	#name : #TMQMetaLevelDependency,
	#superclass : #Object,
	#category : #'Moose-Query-FamixNG'
}

{ #category : #accessing }
TMQMetaLevelDependency class >> allChildrenTypes [
	^ self explicitRequirement
]

{ #category : #accessing }
TMQMetaLevelDependency class >> allParentTypes [
	^ self explicitRequirement
]

{ #category : #accessing }
TMQMetaLevelDependency class >> childrenSelectors [
	^ self explicitRequirement
]

{ #category : #accessing }
TMQMetaLevelDependency class >> parentSelectors [
	^ self explicitRequirement
]

{ #category : #accessing }
TMQMetaLevelDependency class >> parentTypes [
	^ self explicitRequirement
]

{ #category : #accessing }
TMQMetaLevelDependency class >> privateAllChildrenTypes [
	^ (self childrenTypes withDeepCollect: #childrenTypes as: Set) asOrderedCollection
]

{ #category : #accessing }
TMQMetaLevelDependency class >> privateAllParentTypes [
	^ (self parentTypes withDeepCollect: #parentTypes as: Set) asOrderedCollection
]

{ #category : #accessing }
TMQMetaLevelDependency class >> privateChildrenSelectors [
	^ ((self allDeclaredProperties
		select: [ :fm3Prop | fm3Prop isChildrenProperty ])
		collectAsSet: [ :prop | prop name ]) asOrderedCollection
]

{ #category : #accessing }
TMQMetaLevelDependency class >> privateChildrenTypes [
	^ ((self allDeclaredProperties select: [ :fm3Prop | fm3Prop isChildrenProperty ])
		collectAsSet: [ :prop | prop type implementingClass ]) asArray
]

{ #category : #accessing }
TMQMetaLevelDependency class >> privateParentSelectors [
	^ self mooseDescription allAttributes select: #isContainer thenCollect: #implementingSelector
]

{ #category : #accessing }
TMQMetaLevelDependency class >> privateParentTypes [
	^ self mooseDescription allAttributes select: #isContainer thenCollect: [:prop | prop type implementingClass]
]

{ #category : #accessing }
TMQMetaLevelDependency >> allChildrenTypes [
	^ self class allChildrenTypes
]

{ #category : #accessing }
TMQMetaLevelDependency >> allParentTypes [
	^ self class allParentTypes
]

{ #category : #accessing }
TMQMetaLevelDependency >> atScope: aClassFAMIX [
	"I am used to return all the entities at a given famix class scope that are up in the containment tree of the metamodel"

	self flag: #todo.	"I think we do not need the #asArray cast but it will break tests. I will probably let it now then change the tests later. Step by step."
	^ (self atScope: aClassFAMIX in: OrderedCollection new) asArray
]

{ #category : #accessing }
TMQMetaLevelDependency >> atScope: aClassFAMIX in: aCollection [
	(self isKindOf: aClassFAMIX)
		ifTrue: [ aCollection add: self ]
		ifFalse: [ "The content of this block could be much more readable with #do: but we do this solution for performances... We need this method to be really really performant."
			| selectors |
			1 to: (selectors := self parentSelectors) size do: [ :ind | (self perform: (selectors at: ind)) atScope: aClassFAMIX in: aCollection ] ].
	^ aCollection
]

{ #category : #accessing }
TMQMetaLevelDependency >> children [
	| res |
	res := OrderedCollection new.
	self childrenSelectors do: [ :accessor | (self perform: accessor) ifNotNil: [ :r | res addAll: r asCollection ] ].
	^ res asSet
]

{ #category : #accessing }
TMQMetaLevelDependency >> childrenSelectors [
	^ self class childrenSelectors
]

{ #category : #accessing }
TMQMetaLevelDependency >> childrenTypes [
	^ self class childrenTypes 
]

{ #category : #accessing }
TMQMetaLevelDependency >> dependencyFM3PropertyDescription [
	^self explicitRequirement

]

{ #category : #accessing }
TMQMetaLevelDependency >> parentSelectors [
	^ self class parentSelectors
]

{ #category : #accessing }
TMQMetaLevelDependency >> parentTypes [
	^ self class parentTypes
]

{ #category : #accessing }
TMQMetaLevelDependency >> parents [
	| res |
	res := OrderedCollection new.
	self parentSelectors do: [ :accessor | (self perform: accessor) ifNotNil: [ :r | res addAll: r asCollection ] ].
	^ res asSet
]

{ #category : #accessing }
TMQMetaLevelDependency >> toScope: aClassFAMIX [
	"I am used to return all the entities at a given famix class scope that are down in the containment tree of the metamodel"

	self flag: #todo.	"I think we do not need the #asArray cast but it will break tests. I will probably let it now then change the tests later. Step by step."
	^ (self toScope: aClassFAMIX in: OrderedCollection new) asArray
]

{ #category : #accessing }
TMQMetaLevelDependency >> toScope: aClassFAMIX in: aCollection [
	(self isKindOf: aClassFAMIX)
		ifTrue: [ aCollection add: self ]
		ifFalse: [ "The content of this block could be much more readable with #do: but we do this solution for performances... We need this method to be really really performant."
			| selectors |
			1 to: (selectors := self childrenSelectors) size do: [ :ind | (self perform: (selectors at: ind)) toScope: aClassFAMIX in: aCollection ] ].
	^ aCollection
]

{ #category : #accessing }
TMQMetaLevelDependency >> withScope: aClassFAMIX [
	"I am used to return all the entities at a given famix class scope that are up or down in the containment tree of the metamodel"

	^ (self withScope: aClassFAMIX in: OrderedCollection new) asSet
]

{ #category : #accessing }
TMQMetaLevelDependency >> withScope: aClassFAMIX in: aCollection [
	self allParentTypes detect: [ :class | aClassFAMIX = class or: [ aClassFAMIX inheritsFrom: class ] ] ifFound: [ self atScope: aClassFAMIX in: aCollection ].
	self allChildrenTypes detect: [ :class | aClassFAMIX = class or: [ aClassFAMIX inheritsFrom: class ] ] ifFound: [ self toScope: aClassFAMIX in: aCollection ].
	^ aCollection
]
