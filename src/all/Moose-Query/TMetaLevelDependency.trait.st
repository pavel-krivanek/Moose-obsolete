"
This trait provides a common, paradigm agnostic vocabulary to query dependencies of software entities at meta level.

The purpose of MooseQuery is to provide a new version of MooseChef, but to be independent of the language. Currently, MooseChef is only available for OO languages and has to be adapted to each new langage introduced in Famix.

To be used you should modify FAMIXEntity as following: 

MooseEntity subclass: #FAMIXEntity
	uses: TMetaLevelDependencyQueries
	instanceVariableNames: ''
	classVariableNames: ''
	category: 'Famix-Core'


## Adaptation of your Famix entity to MooseQuery
To adapt your Famix entity to this new API, you just need to add the pragma container in the accessor method enabling to access the parent in the containment tree. 

       FAMIXAttribute >> parentType
	...
	<container>
	^ parentType

You have also to add the <source> and target pragma in the selectors definition for each class inheriting FAMIXAssociation

Note 1: This has been done already for Smalltalk and Java corresponding Famix entities.
Note 2: If an entity may have several containers (for example, in Smalltalk, the container of a Method could be a Class or a Package (in case of extension method), put as many container pragmas as possible containers.

##Principal methods to query the associations from or to an entity.
The methods are generic. They are built symmetrically for incoming and for outgoing associations. The result of each method is a MooseIncomingQueryResult (respectively MooseOutgoingQueryResult).

* queryLocalIncoming: aFAMIXAssociationClass
retrieves incoming association whose source is self and the type of association is aFAMIXAssociationClass. 

         myClass queryLocalIncoming: FAMIXReference



* queryIncoming: aFAMIXAssociationClass
queryLocalIncoming applied on self and recursively on each of its children. The following example looks up for the references incoming any class of myPackage

         myPackage queryIncoming: FAMIXReference


* queryAllLocalIncoming
 similar to queryLocalIncoming but takes into account any kind of association types. The following looks up for the references and the invocation incoming myClass.

         myClass queryAllLocalIncoming 

The following example leads to an empty result since there is no FAMIXAssociation incoming a FAMIXPackage.

         myPackage queryAllLocalIncoming 

* queryAllIncoming
 similar to queryIncoming but takes into account any kind of
  association types. The following example returns all incoming FAMIXAssociation incoming an entity contained in myPackage

         myPackage queryAllIncoming 


##Principal methods to filter the result

The result of these methods are MooseObjectQueryResult. They can be invoked either on a MooseIncomingQueryResult, a MooseOutgoingQueryResult or a FAMIXNamedEntity

* atScope: aFAMIXNamedEntityClass
filters the result by going up in the containment tree until the aFAMIXNamedEntityClass. For example, the following example returns a MooseObjectQueryResult containing FAMIXClasses corresponding to the classes containing the sender of the invocations.

         (myMethod queryLocalIncoming:FAMIXInvocation) atScope: FAMIXClass

NB: The following example makes sense: it returns the method containing the innerClass.

         myClass toScope: FAMIXMethod 

* toScope: aFAMIXNamedEntityClass
is the opposite of atScope:. It filters the result by going down in the containment tree until the aFAMIXNamedEntityClass. The following example returns a MooseObjectQueryResult containing all the methods contained in myClass.

         myClass toScope: FAMIXMethod 


The existing methods and more specifically atTypeScope, atPackageScope:, within:, withinClass:, withinPackage:, outOfClass: are still available. Some of them have been modified to satisfy the new API.
"
Trait {
	#name : #TMetaLevelDependency,
	#category : #'Moose-Query'
}

{ #category : #accessing }
TMetaLevelDependency classSide >> allChildrenTypes [
	^ self explicitRequirement
]

{ #category : #accessing }
TMetaLevelDependency classSide >> allParentTypes [
	^ self explicitRequirement
]

{ #category : #accessing }
TMetaLevelDependency classSide >> childrenSelectors [
	^ self explicitRequirement
]

{ #category : #accessing }
TMetaLevelDependency classSide >> parentSelectors [
	^ self explicitRequirement
]

{ #category : #accessing }
TMetaLevelDependency classSide >> parentTypes [
	^ self explicitRequirement
]

{ #category : #accessing }
TMetaLevelDependency classSide >> privateAllChildrenTypes [
	^ (self childrenTypes withDeepCollect: #childrenTypes as: Set) asOrderedCollection
]

{ #category : #accessing }
TMetaLevelDependency classSide >> privateAllParentTypes [
	^ (self parentTypes withDeepCollect: #parentTypes as: Set) asOrderedCollection
]

{ #category : #accessing }
TMetaLevelDependency classSide >> privateChildrenSelectors [
	^ ((self allDeclaredProperties
		select: [ :fm3Prop | fm3Prop isChildrenProperty ])
		collectAsSet: [ :prop | prop name ]) asOrderedCollection
]

{ #category : #accessing }
TMetaLevelDependency classSide >> privateChildrenTypes [
	^ ((self allDeclaredProperties select: [ :fm3Prop | fm3Prop isChildrenProperty ])
		collectAsSet: [ :prop | prop type implementingClass ]) asArray
]

{ #category : #accessing }
TMetaLevelDependency classSide >> privateParentSelectors [
	^ self mooseDescription allAttributes select: #isContainer thenCollect: #implementingSelector
]

{ #category : #accessing }
TMetaLevelDependency classSide >> privateParentTypes [
	^ self mooseDescription allAttributes select: #isContainer thenCollect: [:prop | prop type implementingClass]
]

{ #category : #accessing }
TMetaLevelDependency >> allChildrenTypes [
	^ self class allChildrenTypes
]

{ #category : #accessing }
TMetaLevelDependency >> allParentTypes [
	^ self class allParentTypes
]

{ #category : #scoping }
TMetaLevelDependency >> atScope: aClassFAMIX [
	"I am used to return all the entities at a given famix class scope that are up in the containment tree of the metamodel"

	self flag: #todo.	"I think we do not need the #asArray cast but it will break tests. I will probably let it now then change the tests later. Step by step."
	^ (self atScope: aClassFAMIX in: OrderedCollection new) asArray
]

{ #category : #private }
TMetaLevelDependency >> atScope: aClassFAMIX in: aCollection [
	(self isKindOf: aClassFAMIX)
		ifTrue: [ aCollection add: self ]
		ifFalse: [ "The content of this block could be much more readable with #do: but we do this solution for performances... We need this method to be really really performant."
			| selectors |
			1 to: (selectors := self parentSelectors) size do: [ :ind | (self perform: (selectors at: ind)) atScope: aClassFAMIX in: aCollection ] ].
	^ aCollection
]

{ #category : #accessing }
TMetaLevelDependency >> children [
	| res |
	res := OrderedCollection new.
	self childrenSelectors do: [ :accessor | (self perform: accessor) ifNotNil: [ :r | res addAll: r asCollection ] ].
	^ res asSet
]

{ #category : #accessing }
TMetaLevelDependency >> childrenAccessors [
	self 
		deprecated: 'Use childrenSelectors instead'
		on: 	'21 December 2016' 
		in: 'Pharo-6.0-60328-'
		transformWith: '`@receiver childrenAccessors' -> '`@receiver childrenSelectors'.
	^ self childrenSelectors
]

{ #category : #accessing }
TMetaLevelDependency >> childrenEntities [
	self
		deprecated: 'Use #children instead'
		on: '19 Septembre 2017'
		in: 'Moose 6.1'
		transformWith: '`@receiver childrenEntities' -> '`@receiver children'.
	^ self children
]

{ #category : #accessing }
TMetaLevelDependency >> childrenSelectors [
	^ self class childrenSelectors
]

{ #category : #accessing }
TMetaLevelDependency >> childrenTypes [
	^ self class childrenTypes 
]

{ #category : #accessing }
TMetaLevelDependency >> dependencyFM3PropertyDescription [
	^self explicitRequirement

]

{ #category : #accessing }
TMetaLevelDependency >> parentAccessors [
	self
		deprecated: 'Use childrenSelectors instead'
		on: '21 December 2016'
		in: 'Pharo-6.0-60328-'
		transformWith: '`@receiver parentAccessors' -> '`@receiver parentSelectors'.
	^ self parentSelectors
]

{ #category : #accessing }
TMetaLevelDependency >> parentEntities [
	self
		deprecated: 'Use #parents instead'
		on: '19 Septembre 2017'
		in: 'Moose 6.1'
		transformWith: '`@receiver parentEntities' -> '`@receiver parents'.
	^ self parents
]

{ #category : #accessing }
TMetaLevelDependency >> parentSelectors [
	^ self class parentSelectors
]

{ #category : #accessing }
TMetaLevelDependency >> parentTypes [
	^ self class parentTypes
]

{ #category : #accessing }
TMetaLevelDependency >> parents [
	| res |
	res := OrderedCollection new.
	self parentSelectors do: [ :accessor | (self perform: accessor) ifNotNil: [ :r | res addAll: r asCollection ] ].
	^ res asSet
]

{ #category : #scoping }
TMetaLevelDependency >> toScope: aClassFAMIX [
	"I am used to return all the entities at a given famix class scope that are down in the containment tree of the metamodel"

	self flag: #todo.	"I think we do not need the #asArray cast but it will break tests. I will probably let it now then change the tests later. Step by step."
	^ (self toScope: aClassFAMIX in: OrderedCollection new) asArray
]

{ #category : #private }
TMetaLevelDependency >> toScope: aClassFAMIX in: aCollection [
	(self isKindOf: aClassFAMIX)
		ifTrue: [ aCollection add: self ]
		ifFalse: [ "The content of this block could be much more readable with #do: but we do this solution for performances... We need this method to be really really performant."
			| selectors |
			1 to: (selectors := self childrenSelectors) size do: [ :ind | (self perform: (selectors at: ind)) toScope: aClassFAMIX in: aCollection ] ].
	^ aCollection
]

{ #category : #scoping }
TMetaLevelDependency >> withScope: aClassFAMIX [
	"I am used to return all the entities at a given famix class scope that are up or down in the containment tree of the metamodel"

	^ (self withScope: aClassFAMIX in: OrderedCollection new) asSet
]

{ #category : #private }
TMetaLevelDependency >> withScope: aClassFAMIX in: aCollection [
	self allParentTypes detect: [ :class | aClassFAMIX = class or: [ aClassFAMIX inheritsFrom: class ] ] ifFound: [ self atScope: aClassFAMIX in: aCollection ].
	self allChildrenTypes detect: [ :class | aClassFAMIX = class or: [ aClassFAMIX inheritsFrom: class ] ] ifFound: [ self toScope: aClassFAMIX in: aCollection ].
	^ aCollection
]
