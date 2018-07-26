Class {
	#name : #FmxNGJavaNamedEntity,
	#superclass : #FmxNGJavaSourcedEntity,
	#traits : 'FmxNGTInvocationsReceiver + FmxNGTNamed + FmxNGTPackageable + FmxNGTPossibleStub + FmxNGTWithAnnotationInstances + FmxNGTWithModifiers + TDependencyQueries + TEntityMetaLevelDependency',
	#classTraits : 'FmxNGTInvocationsReceiver classTrait + FmxNGTNamed classTrait + FmxNGTPackageable classTrait + FmxNGTPossibleStub classTrait + FmxNGTWithAnnotationInstances classTrait + FmxNGTWithModifiers classTrait + TDependencyQueries classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaNamedEntity class >> annotation [

	<MSEClass: #NamedEntity super: #FmxNGJavaSourcedEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaNamedEntity class >> generatedSlotNames [
	<generated>
	'FmxNGJavaNamedEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaNamedEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTInvocationsReceiver FmxNGTNamed FmxNGTPackageable FmxNGTPossibleStub FmxNGTWithAnnotationInstances FmxNGTWithModifiers TDependencyQueries TEntityMetaLevelDependency)
]

{ #category : #meta }
FmxNGJavaNamedEntity class >> requirements [

	<generated>
	^ { FmxNGJavaNamedEntity }
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamedEntity >> accept: aVisitor [

	aVisitor visitNamedEntity: self
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamedEntity >> belongsTo [
	
	^self subclassResponsibility
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamedEntity >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self name: anEntity name copy.
	self isStub: anEntity isStub.
	self modifiers: (anEntity modifiers collect: #copy)

]

{ #category : #'as yet unclassified' }
FmxNGJavaNamedEntity >> methodScope [
	"Empty default scope"
	^ nil
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamedEntity >> moosechefEqualsTo: anEntity moduloScope: aScope [
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

{ #category : #'as yet unclassified' }
FmxNGJavaNamedEntity >> namespaceScope [
	"Empty default scope"
	^ nil
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamedEntity >> packageScope [
	"Empty default scope"
	^ nil
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamedEntity >> selectWithinYourScope: aMooseQueryResult [
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamedEntity >> stubFormattedName [
	 ^ self isStub 
		ifTrue: [ Text 
					string: self name
					attribute: TextEmphasis italic ]
		ifFalse: [ Text fromString: self name ] 
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamedEntity >> typeScope [
	"Empty default scope"
	^ nil
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamedEntity >> yourScope [
	"Empty default scope"

	self
		deprecated:
			'#yourScope was used by MooseChef for queries. Now, MooseQuery does not need it anymore. Example of code update: "myEntity queryAllIncoming perform: mySecondEntity yourScope" => "myEntity queryAllIncoming withScope: mySecondEntity class"'
		on: '12 january 2018'
		in: 'Moose6.1'.
	^ nil
]
