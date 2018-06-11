Class {
	#name : #FAMIXNamedEntity,
	#superclass : #FAMIXSourcedEntity,
	#traits : 'FmxNGTInvocationsReceiver + FmxNGTNamed + FmxNGTPackageable + FmxNGTPossibleStub + FmxNGTWithAnnotationInstances + FmxNGTWithModifiers + TDependencyQueries + TEntityMetaLevelDependency',
	#classTraits : 'FmxNGTInvocationsReceiver classTrait + FmxNGTNamed classTrait + FmxNGTPackageable classTrait + FmxNGTPossibleStub classTrait + FmxNGTWithAnnotationInstances classTrait + FmxNGTWithModifiers classTrait + TDependencyQueries classTrait + TEntityMetaLevelDependency classTrait',
	#classInstVars : [
		'#childrenSelectors',
		'#allParentTypes',
		'#allChildrenTypes',
		'#parentSelectors',
		'#outgoingMSEProperties',
		'#incomingMSEProperties',
		'#outgoingAssociationTypes',
		'#incomingAssociationTypes',
		'#allIncomingAssociationTypes',
		'#allOutgoingAssociationTypes'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #'Moose-Query-Extensions' }
FAMIXNamedEntity class >> allChildrenTypes [
	^ allChildrenTypes ifNil: [ allChildrenTypes := self privateAllChildrenTypes ]
]

{ #category : #accessing }
FAMIXNamedEntity class >> allIncomingAssociationTypes [
	"Here we add a cache because this is heavely used in MooseQuery for the navigations."

	^ allIncomingAssociationTypes
		ifNil: [ allIncomingAssociationTypes := self privateAllIncomingAssociationTypes ]
]

{ #category : #accessing }
FAMIXNamedEntity class >> allOutgoingAssociationTypes [
	"Here we add a cache because this is heavely used in MooseQuery for the navigations."

	^ allOutgoingAssociationTypes
		ifNil: [ allOutgoingAssociationTypes := self privateAllOutgoingAssociationTypes ]
]

{ #category : #'Moose-Query-Extensions' }
FAMIXNamedEntity class >> allParentTypes [
	^ allParentTypes ifNil: [ allParentTypes := self privateAllParentTypes ]
]

{ #category : #meta }
FAMIXNamedEntity class >> annotation [

	<generated>
	<MSEClass: #NamedEntity super: #FAMIXSourcedEntity>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #'Moose-Query-Extensions' }
FAMIXNamedEntity class >> belongsToMethod [
	^ self compiledMethodAt: #belongsTo ifAbsent: nil
]

{ #category : #'Moose-Query-Extensions' }
FAMIXNamedEntity class >> childrenSelectors [
	^ childrenSelectors ifNil: [ childrenSelectors := self privateChildrenSelectors ]
]

{ #category : #'Moose-Query-Extensions' }
FAMIXNamedEntity class >> childrenTypes [
	^ self privateChildrenTypes
]

{ #category : #accessing }
FAMIXNamedEntity class >> dependencyFM3PropertyDescription [
	^ self allDeclaredProperties
		select: [ :e | e hasOpposite and: [ e opposite isSource or: [ e opposite isTarget ] ] ]
]

{ #category : #generator }
FAMIXNamedEntity class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXNamedEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTInvocationsReceiver FmxNGTNamed FmxNGTPackageable FmxNGTPossibleStub FmxNGTWithAnnotationInstances FmxNGTWithModifiers)
]

{ #category : #accessing }
FAMIXNamedEntity class >> incomingAssociationTypes [
	"Here we add a cache because this is heavely used in MooseQuery for the navigations."

	^ incomingAssociationTypes
		ifNil: [ incomingAssociationTypes := self privateIncomingAssociationTypes ]
]

{ #category : #accessing }
FAMIXNamedEntity class >> incomingMSEProperties [
	^ incomingMSEProperties ifNil: [ incomingMSEProperties := self privateIncomingMSEProperties ]
]

{ #category : #accessing }
FAMIXNamedEntity class >> incomingMSEPropertiesCache: aValue [
	incomingMSEProperties := aValue
]

{ #category : #'instance creation' }
FAMIXNamedEntity class >> named: aString [
	^ self new
		name: aString;
		yourself
]

{ #category : #accessing }
FAMIXNamedEntity class >> outgoingAssociationTypes [
	"Here we add a cache because this is heavely used in MooseQuery for the navigations."

	^ outgoingAssociationTypes
		ifNil: [ outgoingAssociationTypes := self privateOutgoingAssociationTypes ]
]

{ #category : #accessing }
FAMIXNamedEntity class >> outgoingMSEProperties [
	^ outgoingMSEProperties ifNil: [ outgoingMSEProperties := self privateOutgoingMSEProperties ]
]

{ #category : #accessing }
FAMIXNamedEntity class >> outgoingMSEPropertiesCache: aValue [
	outgoingMSEProperties := aValue.
]

{ #category : #accessing }
FAMIXNamedEntity class >> parentMetaclass [
	^((self class >> #annotation) pragmas select: [ :p | p keyword = 'parentMetaClass:' ]) collect: [:p | p arguments first ]
]

{ #category : #'Moose-Query-Extensions' }
FAMIXNamedEntity class >> parentSelector [
	self 
		deprecated: 'Use parentSelectors instead'
		on: 	'21 December 2016' 
		in: 'Pharo-6.0-60328-'
		transformWith: '`@receiver parentSelector' -> '`@receiver parentSelectors'.
	^ self parentSelectors
]

{ #category : #'Moose-Query-Extensions' }
FAMIXNamedEntity class >> parentSelectors [
	^ parentSelectors ifNil: [ parentSelectors := self privateParentSelectors ] 
]

{ #category : #'Moose-Query-Extensions' }
FAMIXNamedEntity class >> parentTypes [
	^ self privateParentTypes 
]

{ #category : #meta }
FAMIXNamedEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Moose-Query-Extensions' }
FAMIXNamedEntity class >> resetMooseQueryCaches [
	super resetMooseQueryCaches.
	childrenSelectors := parentSelectors := allChildrenTypes := allParentTypes := outgoingMSEProperties := incomingMSEProperties := incomingAssociationTypes := outgoingAssociationTypes := allOutgoingAssociationTypes := allIncomingAssociationTypes := nil
]

{ #category : #'Famix-Extensions' }
FAMIXNamedEntity >> accept: aVisitor [

	aVisitor visitNamedEntity: self
]

{ #category : #'Famix-Implementation' }
FAMIXNamedEntity >> addReceivingInvocation: anInvocation [
	receivingInvocations add: anInvocation
]

{ #category : #accessing }
FAMIXNamedEntity >> belongsTo [
	
	^self subclassResponsibility
]

{ #category : #'Famix-Extensions' }
FAMIXNamedEntity >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self name: anEntity name copy.
	self isStub: anEntity isStub.
	self modifiers: (anEntity modifiers collect: #copy)

]

{ #category : #testing }
FAMIXNamedEntity >> hasUniqueMooseNameInModel [
	" all subclasses should call the method: 'resetMooseName' if a change causes the moosename to change "
	^true
]

{ #category : #'moosequery-queries-incoming' }
FAMIXNamedEntity >> incomingTypeDeclarations [
	"Should return the incoming type declarations of the entity as MooseChefTypeDeclarationAssociation.
	
	typeDeclaration is a virtual association that relates a structural entity (i.e. a variable) to its type."

	"Most of the time it will return nothing. Overide me if it need to return something"

	^ {}
]

{ #category : #'moosechef-scoping-filtering' }
FAMIXNamedEntity >> methodScope [
	"Empty default scope"
	^ nil
]

{ #category : #'Famix-Implementation' }
FAMIXNamedEntity >> mooseNameOn: stream [
	self name ifNotNil: [ :n | stream nextPutAll: n ]
]

{ #category : #'moosechef-scoping-filtering' }
FAMIXNamedEntity >> moosechefEqualsTo: anEntity moduloScope: aScope [
	"checks whether receiver is equal to anEntity at the given scope.
	  For example, a class could be equal to a method at the packageScope, i.e. they belong to the same package.
	  When changing scopes, we might get collections and then we check whether it includes the receiver"

	| entityRescoped myselfRescoped |
	myselfRescoped := self atScope: aScope.
	(myselfRescoped size = 1) ifTrue: [ myselfRescoped := myselfRescoped anyOne ].
	myselfRescoped isCollection
		ifTrue: [ ^ myselfRescoped anySatisfy: [ :myElt | myElt moosechefEqualsTo: anEntity moduloScope: aScope ] ]
		ifFalse: [ entityRescoped := anEntity atScope: aScope.
			entityRescoped isCollection
				ifTrue: [ ^ entityRescoped includes: myselfRescoped ]
				ifFalse: [ ^ entityRescoped == myselfRescoped ] ]
]

{ #category : #accessing }
FAMIXNamedEntity >> name: aString [
	name := aString.
	self resetMooseName

]

{ #category : #'moosechef-scoping-filtering' }
FAMIXNamedEntity >> namespaceScope [
	"Empty default scope"
	^ nil
]

{ #category : #'moosequery-queries-outgoing' }
FAMIXNamedEntity >> outgoingTypeDeclarations [
	"Should return the incoming type declarations of the entity as MooseChefTypeDeclarationAssociation.
	
	typeDeclaration is a virtual association that relates a structural entity (i.e. a variable) to its type."

	"Most of the time it will return nothing. Overide me if it need to return something"

	^ {}
]

{ #category : #'moosechef-scoping-filtering' }
FAMIXNamedEntity >> packageScope [
	"Empty default scope"
	^ nil
]

{ #category : #'meta information' }
FAMIXNamedEntity >> resetMooseName [
	super resetMooseName.
	self children do: [ :entity | entity resetMooseName ]
]

{ #category : #'moosechef-scoping-filtering' }
FAMIXNamedEntity >> selectWithinYourScope: aMooseQueryResult [
	self subclassResponsibility
]

{ #category : #'Famix-Extensions' }
FAMIXNamedEntity >> stubFormattedName [
	 ^ self isStub 
		ifTrue: [ Text 
					string: self name
					attribute: TextEmphasis italic ]
		ifFalse: [ Text fromString: self name ] 
]

{ #category : #'moosechef-scoping-filtering' }
FAMIXNamedEntity >> typeScope [
	"Empty default scope"
	^ nil
]

{ #category : #'moosechef-scoping-filtering' }
FAMIXNamedEntity >> yourScope [
	"Empty default scope"

	self
		deprecated:
			'#yourScope was used by MooseChef for queries. Now, MooseQuery does not need it anymore. Example of code update: "myEntity queryAllIncoming perform: mySecondEntity yourScope" => "myEntity queryAllIncoming withScope: mySecondEntity class"'
		on: '12 january 2018'
		in: 'Moose6.1'.
	^ nil
]
