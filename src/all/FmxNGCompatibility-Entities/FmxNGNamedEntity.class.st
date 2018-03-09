Class {
	#name : #FmxNGNamedEntity,
	#superclass : #FmxNGNamedEntityGenerated,
	#traits : 'TDependencyQueries + TEntityMetaLevelDependency',
	#classTraits : 'TDependencyQueries classTrait + TEntityMetaLevelDependency classTrait',
	#classInstVars : [
		'childrenSelectors',
		'allParentTypes',
		'allChildrenTypes',
		'parentSelectors',
		'outgoingMSEProperties',
		'incomingMSEProperties',
		'outgoingAssociationTypes',
		'incomingAssociationTypes',
		'allIncomingAssociationTypes',
		'allOutgoingAssociationTypes'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #accessing }
FmxNGNamedEntity class >> allChildrenTypes [
	^ allChildrenTypes ifNil: [ allChildrenTypes := self privateAllChildrenTypes ]
]

{ #category : #accessing }
FmxNGNamedEntity class >> allIncomingAssociationTypes [
	"Here we add a cache because this is heavely used in MooseQuery for the navigations."

	^ allIncomingAssociationTypes
		ifNil: [ allIncomingAssociationTypes := self privateAllIncomingAssociationTypes ]
]

{ #category : #accessing }
FmxNGNamedEntity class >> allOutgoingAssociationTypes [
	"Here we add a cache because this is heavely used in MooseQuery for the navigations."

	^ allOutgoingAssociationTypes
		ifNil: [ allOutgoingAssociationTypes := self privateAllOutgoingAssociationTypes ]
]

{ #category : #accessing }
FmxNGNamedEntity class >> allParentTypes [
	^ allParentTypes ifNil: [ allParentTypes := self privateAllParentTypes ]
]

{ #category : #meta }
FmxNGNamedEntity class >> annotation [

	<MSEClass: #NamedEntity super: #FmxNGNamedEntityGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #accessing }
FmxNGNamedEntity class >> belongsToMethod [
	^ self compiledMethodAt: #belongsTo ifAbsent: nil
]

{ #category : #accessing }
FmxNGNamedEntity class >> childrenSelectors [
	^ childrenSelectors ifNil: [ childrenSelectors := self privateChildrenSelectors ]
]

{ #category : #accessing }
FmxNGNamedEntity class >> childrenTypes [
	^ self privateChildrenTypes
]

{ #category : #accessing }
FmxNGNamedEntity class >> incomingAssociationTypes [
	"Here we add a cache because this is heavely used in MooseQuery for the navigations."

	^ incomingAssociationTypes
		ifNil: [ incomingAssociationTypes := self privateIncomingAssociationTypes ]
]

{ #category : #accessing }
FmxNGNamedEntity class >> incomingMSEProperties [
	^ incomingMSEProperties ifNil: [ incomingMSEProperties := self privateIncomingMSEProperties ]
]

{ #category : #accessing }
FmxNGNamedEntity class >> incomingMSEPropertiesCache: aValue [
	incomingMSEProperties := aValue
]

{ #category : #'instance creation' }
FmxNGNamedEntity class >> named: aString [
	^ self new
		name: aString;
		yourself
]

{ #category : #accessing }
FmxNGNamedEntity class >> outgoingAssociationTypes [
	"Here we add a cache because this is heavely used in MooseQuery for the navigations."

	^ outgoingAssociationTypes
		ifNil: [ outgoingAssociationTypes := self privateOutgoingAssociationTypes ]
]

{ #category : #accessing }
FmxNGNamedEntity class >> outgoingMSEProperties [
	^ outgoingMSEProperties ifNil: [ outgoingMSEProperties := self privateOutgoingMSEProperties ]
]

{ #category : #accessing }
FmxNGNamedEntity class >> outgoingMSEPropertiesCache: aValue [
	outgoingMSEProperties := aValue.
]

{ #category : #accessing }
FmxNGNamedEntity class >> parentSelectors [
	^ parentSelectors ifNil: [ parentSelectors := self privateParentSelectors ] 
]

{ #category : #accessing }
FmxNGNamedEntity class >> parentTypes [
	^ self privateParentTypes 
]

{ #category : #accessing }
FmxNGNamedEntity class >> resetMooseQueryCaches [
	super resetMooseQueryCaches.
	childrenSelectors := parentSelectors := allChildrenTypes := allParentTypes := outgoingMSEProperties := incomingMSEProperties := incomingAssociationTypes := outgoingAssociationTypes := nil
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> accept: aVisitor [

	aVisitor visitNamedEntity: self
]

{ #category : #'Famix-Implementation' }
FmxNGNamedEntity >> addModifier: aString [
	modifiers add: aString
]

{ #category : #'Famix-Implementation' }
FmxNGNamedEntity >> addReceivingInvocation: anInvocation [
	receivingInvocations add: anInvocation
]

{ #category : #'Famix-Java' }
FmxNGNamedEntity >> annotationInstanceNamed: anAnnotationName [
	^ self 
		annotationInstanceNamed: anAnnotationName 
		ifAbsent: [ ]
]

{ #category : #'Famix-Java' }
FmxNGNamedEntity >> annotationInstanceNamed: anAnnotationName ifAbsent: aBlock [
	^ self annotationInstances 
		detect: [ :each | each annotationType name asSymbol = anAnnotationName asSymbol ]
		ifNone: aBlock
]

{ #category : #accessing }
FmxNGNamedEntity >> annotationTypes [
	^ self annotationInstances collectAsSet: [:each | each annotationType ]

]

{ #category : #accessing }
FmxNGNamedEntity >> belongsTo [
	
	^self subclassResponsibility
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self name: anEntity name copy.
	self isStub: anEntity isStub.
	self modifiers: (anEntity modifiers collect: [:m| m copy])

]

{ #category : #testing }
FmxNGNamedEntity >> hasUniqueMooseNameInModel [
	" all subclasses should call the method: 'resetMooseName' if a change causes the moosename to change "
	^true
]

{ #category : #'moosequery-queries-incoming' }
FmxNGNamedEntity >> incomingTypeDeclarations [
	"Should return the incoming type declarations of the entity as MooseChefTypeDeclarationAssociation.
	
	typeDeclaration is a virtual association that relates a structural entity (i.e. a variable) to its type."

	"Most of the time it will return nothing. Overide me if it need to return something"

	^ {}
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> isAbstract [
	<MSEProperty: #isAbstract type: #Boolean> <derived>
	<MSEComment: 'Flag true for abstract entities. Language dependent.'>
	
	^ self modifiers includes: #abstract
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> isAbstract: aBoolean [
	^ self modifierSet: aBoolean for: #abstract
]

{ #category : #'Famix-Java' }
FmxNGNamedEntity >> isAnnotated [
	^ self annotationInstances notEmpty
]

{ #category : #'Famix-Java' }
FmxNGNamedEntity >> isAnnotatedWith: anAnnotationName [
	^ self annotationInstances contains: [ :each | each annotationType name asSymbol = anAnnotationName asSymbol ]
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> isFinal [
	<MSEProperty: #isFinal type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities defined as being final. Language dependent.'>	

	^ self modifiers includes: #final
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> isFinal: aBoolean [
	^ self modifierSet: aBoolean for: #final
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> isPackage [
	<MSEProperty: #isPackage type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities that have a package visibility. Language dependent.'>
	
	^ self modifiers includes: #package
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> isPackage: aBoolean [
	^ self modifierSet: aBoolean for: #package
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> isPrivate [
	<MSEProperty: #isPrivate type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities invisible out of their owner scope. Language dependent.'>
	
	^ self modifiers includes: #private
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> isPrivate: aBoolean [
	^ self modifierSet: aBoolean for: #private
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> isProtected [
	<MSEProperty: #isProtected type: #Boolean> <derived>
	<MSEComment: 'Flag true for protected entities, depending on language semantics.'>
	
	^ self modifiers includes: #protected
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> isProtected: aBoolean [
	^ self modifierSet: aBoolean for: #protected
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> isPublic [
	<MSEProperty: #isPublic type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities accessible from anywhere. Language dependent.'>	

	^ self modifiers includes: #public
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> isPublic: aBoolean [
	^ self modifierSet: aBoolean for: #public
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGNamedEntity >> methodScope [
	"Empty default scope"
	^ nil
]

{ #category : #'Famix-Implementation' }
FmxNGNamedEntity >> modifierSet: aBoolean for: aSymbol [
	^ aBoolean ifTrue: [self addModifier: aSymbol] ifFalse: [self removeModifier: aSymbol]
]

{ #category : #'Moose-Finder' }
FmxNGNamedEntity >> mooseFinderAnnotationInstancesIn: composite [
	<moosePresentationOrder: 20>
	composite list
			title: 'Annotation instances';
			titleIcon: MooseIcons famixAnnotationInstanceGroup;
			display: [ self annotationInstances ];
			format: #mooseName;
			when: [ self annotationInstances notEmpty ]
]

{ #category : #'Famix-Implementation' }
FmxNGNamedEntity >> mooseNameOn: stream [
	self name ifNotNil: [ :n | stream nextPutAll: n ]
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGNamedEntity >> moosechefEqualsTo: anEntity moduloScope: aScope [
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
FmxNGNamedEntity >> name: aString [
	super name: aString.
	self resetMooseName

]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> nameLength [
	<MSEProperty: #nameLength type: #Number>
	<derived>
	<MSEComment: 'The number of characters in the name'>
	
	^self
		lookUpPropertyNamed: #nameLength
		computedAs: [self name size]
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> nameLength: aNumber [
	
	self privateState propertyAt: #nameLength put: aNumber
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGNamedEntity >> namespaceScope [
	"Empty default scope"
	^ nil
]

{ #category : #'moosequery-queries-outgoing' }
FmxNGNamedEntity >> outgoingTypeDeclarations [
	"Should return the incoming type declarations of the entity as MooseChefTypeDeclarationAssociation.
	
	typeDeclaration is a virtual association that relates a structural entity (i.e. a variable) to its type."

	"Most of the time it will return nothing. Overide me if it need to return something"

	^ {}
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGNamedEntity >> packageScope [
	"Empty default scope"
	^ nil
]

{ #category : #'Famix-Implementation' }
FmxNGNamedEntity >> removeModifier: aString [
	modifiers remove: aString ifAbsent: []
]

{ #category : #accessing }
FmxNGNamedEntity >> resetMooseName [
	super resetMooseName.
	self children do: [ :entity | entity resetMooseName ]
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGNamedEntity >> selectWithinYourScope: aMooseQueryResult [
	self subclassResponsibility
]

{ #category : #'Famix-Implementation' }
FmxNGNamedEntity >> stub: aBoolean [
	
	self isStub: aBoolean
]

{ #category : #'Famix-Extensions' }
FmxNGNamedEntity >> stubFormattedName [
	 ^ self isStub 
		ifTrue: [ Text 
					string: self name
					attribute: TextEmphasis italic ]
		ifFalse: [ Text fromString: self name ] 
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGNamedEntity >> typeScope [
	"Empty default scope"
	^ nil
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGNamedEntity >> yourScope [
	"Empty default scope"

	self
		deprecated:
			'#yourScope was used by MooseChef for queries. Now, MooseQuery does not need it anymore. Example of code update: "myEntity queryAllIncoming perform: mySecondEntity yourScope" => "myEntity queryAllIncoming withScope: mySecondEntity class"'
		on: '12 january 2018'
		in: 'Moose6.1'.
	^ nil
]
