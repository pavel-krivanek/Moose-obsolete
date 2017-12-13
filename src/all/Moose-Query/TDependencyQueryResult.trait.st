"
TDependencyQueryResult is a Trait that provides some common MooseChef selectors to several MooseQueryResult.

"
Trait {
	#name : #TDependencyQueryResult,
	#category : #'Moose-Query'
}

{ #category : #filtering }
TDependencyQueryResult >> atScope: aClassFamix [
	| res |
	res := OrderedCollection new.
	self storage do: [ :dep | (self opposite: dep) atScope: aClassFamix in: res ].
	^ self newObjectResultWith: res asSet
]

{ #category : #private }
TDependencyQueryResult >> elementAtReceiverScope: dep [
	"returns scope of opposite element matching the scope of the receiver.
	For example, would return the class of an invoked method if query is called on a class."

	^ (self opposite: dep) perform: self receiver yourScope
]

{ #category : #private }
TDependencyQueryResult >> newAssocResultWith: aCollection [

	^ self class on: self receiver withAll: aCollection
]

{ #category : #requirement }
TDependencyQueryResult >> opposite: dep [
	"Returns the opposite (or remote) object in the dependency depending on the incoming/outgoing side.
	incoming -> from.
	outgoing -> to"

	self explicitRequirement 
]

{ #category : #accessing }
TDependencyQueryResult >> opposites [
	^ self newObjectResultWith: (self storage flatCollectAsSet: [ :d | (self opposite: d) asCollection ])
]

{ #category : #filtering }
TDependencyQueryResult >> outOfClass: aFAMIXClass [ 
	
	^ self rejectDependencies: [ :dep | (self opposite: dep) isCollection ifTrue: [ (self opposite: dep) isNotEmpty and: [(self opposite: dep) anySatisfy: [ :anEntity | anEntity typeScope == aFAMIXClass ] ] ] ifFalse: [aFAMIXClass == (self opposite: dep) typeScope]]
]

{ #category : #filtering }
TDependencyQueryResult >> outOfNamespace: aFAMIXNamespace [ 

	^ self rejectDependencies: [ :dep | (self opposite: dep) isCollection ifTrue: [ (self opposite: dep) isNotEmpty and: [(self opposite: dep) anySatisfy: [ :anEntity | anEntity namespaceScope == aFAMIXNamespace ] ] ] ifFalse: [aFAMIXNamespace == (self opposite: dep) namespaceScope]]
]

{ #category : #filtering }
TDependencyQueryResult >> outOfPackage: aFAMIXPackage [ 
	
	^ self rejectDependencies: [ :dep | (self opposite: dep) isCollection ifTrue: [ (self opposite: dep) isNotEmpty and: [(self opposite: dep) anySatisfy: [ :anEntity | anEntity packageScope == aFAMIXPackage ] ] ] ifFalse: [aFAMIXPackage == (self opposite: dep) packageScope]]
]

{ #category : #scoping }
TDependencyQueryResult >> primCollectAtScope: aScopeSymbol [
	"
	^ self opposites collectAtScope: aScopeSymbol
	"

	self deprecated: 'This method is part of the old query system. Now instead of #collectAtScope: aSymbol you should use #atScope: aClass.' on: '19/05/2016' in: 'Moose6.1'.
	^ (self storage collect: [ :dep | (self opposite: dep) perform: aScopeSymbol ]) asSet
]

{ #category : #private }
TDependencyQueryResult >> rejectDependencies: aConditionBlock [ 
	
	^ self newAssocResultWith: (self storage reject: aConditionBlock )
]

{ #category : #private }
TDependencyQueryResult >> selectDependencies: aConditionBlock [ 
	
	^ self newAssocResultWith: (self storage select: aConditionBlock )
]

{ #category : #filtering }
TDependencyQueryResult >> sourceMethods [
	
	^ self collectAsSet: #from
]

{ #category : #filtering }
TDependencyQueryResult >> toScope: aClassFamix [
	| res |
	res := OrderedCollection new.
	self storage do: [ :dep | (self opposite: dep) toScope: aClassFamix in: res ].
	^ self newObjectResultWith: res asSet
]

{ #category : #filtering }
TDependencyQueryResult >> withScope: aClassFamix [
	| res |
	res := OrderedCollection new.
	self storage do: [ :dep | (self opposite: dep) withScope: aClassFamix in: res ].
	^ self newObjectResultWith: res asSet
]

{ #category : #filtering }
TDependencyQueryResult >> within: aFamixEntity [
	^self newAssocResultWith:
		(self storage select: [ :dep | 
			(self isOppositeMultivalued: dep)
				ifTrue: [ (self opposite: dep) anySatisfy: [ :entity |  {aFamixEntity} = (entity atScope: aFamixEntity class) ] ]
				ifFalse: [ {aFamixEntity} = ((self opposite: dep) atScope: aFamixEntity class) ] ])
]

{ #category : #filtering }
TDependencyQueryResult >> withinClass: aFAMIXClass [ 
	
	^ self within: aFAMIXClass 
]

{ #category : #filtering }
TDependencyQueryResult >> withinNamespace: aFAMIXNamespace [ 

	^ self within: aFAMIXNamespace 
]

{ #category : #filtering }
TDependencyQueryResult >> withinPackage: aFAMIXPackage [ 
	
	^ self within: aFAMIXPackage 
]

{ #category : #filtering }
TDependencyQueryResult >> withoutSelfLoops [
	"exclude dependencies which loop back to the receiver"

	^ self rejectDependencies: [ :dep | (self opposite: dep) asCollection anySatisfy: [ :opp | self receiver moosechefEqualsTo: opp moduloScope: self receiver class ] ]
]