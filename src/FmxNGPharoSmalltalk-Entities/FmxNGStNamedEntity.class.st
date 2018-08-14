Class {
	#name : #FmxNGStNamedEntity,
	#superclass : #FmxNGStSourcedEntity,
	#traits : 'FmxNGTInvocationsReceiver + FmxNGTNamed + FmxNGTPackageable + FmxNGTPossibleStub + FmxNGTWithAnnotationInstances + FmxNGTWithModifiers + TDependencyQueries + TEntityMetaLevelDependency',
	#classTraits : 'FmxNGTInvocationsReceiver classTrait + FmxNGTNamed classTrait + FmxNGTPackageable classTrait + FmxNGTPossibleStub classTrait + FmxNGTWithAnnotationInstances classTrait + FmxNGTWithModifiers classTrait + TDependencyQueries classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStNamedEntity class >> annotation [

	<MSEClass: #NamedEntity super: #FmxNGStSourcedEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStNamedEntity class >> generatedSlotNames [
	<generated>
	'FmxNGStNamedEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStNamedEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTInvocationsReceiver FmxNGTNamed FmxNGTPackageable FmxNGTPossibleStub FmxNGTWithAnnotationInstances FmxNGTWithModifiers TDependencyQueries TEntityMetaLevelDependency)
]

{ #category : #accessing }
FmxNGStNamedEntity class >> incomingMSEProperties [
	^ incomingMSEProperties ifNil: [ incomingMSEProperties := self privateIncomingMSEProperties ]
]

{ #category : #meta }
FmxNGStNamedEntity class >> requirements [

	<generated>
	^ { FmxNGStNamedEntity }
]

{ #category : #'as yet unclassified' }
FmxNGStNamedEntity class >> resetMooseQueryCaches [
	super resetMooseQueryCaches.
	self resetTEntityMetaLevelDependencyCaches.

]

{ #category : #accessing }
FmxNGStNamedEntity >> belongsTo [

	<generated>
	^ self parentPackage

]

{ #category : #accessing }
FmxNGStNamedEntity >> belongsTo: anObject [

	<generated>
	self parentPackage: anObject

]

{ #category : #testing }
FmxNGStNamedEntity >> moosechefEqualsTo: anEntity moduloScope: aScope [
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
FmxNGStNamedEntity >> packageScope [
	"Empty default scope"
	^ nil
]

{ #category : #'Famix-Extensions' }
FmxNGStNamedEntity >> stubFormattedName [
	 ^ self isStub 
		ifTrue: [ Text 
					string: self name
					attribute: TextEmphasis italic ]
		ifFalse: [ Text fromString: self name ] 
]
