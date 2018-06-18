Class {
	#name : #FmxNGStNamedEntity,
	#superclass : #FmxNGStSourcedEntity,
	#traits : 'FmxNGTInvocationsReceiver + FmxNGTNamed + FmxNGTPackageable + FmxNGTPossibleStub + FmxNGTWithAnnotationInstances + FmxNGTWithModifiers',
	#classTraits : 'FmxNGTInvocationsReceiver classTrait + FmxNGTNamed classTrait + FmxNGTPackageable classTrait + FmxNGTPossibleStub classTrait + FmxNGTWithAnnotationInstances classTrait + FmxNGTWithModifiers classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStNamedEntity class >> annotation [

	<generated>
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
	^ #(FmxNGTInvocationsReceiver FmxNGTNamed FmxNGTPackageable FmxNGTPossibleStub FmxNGTWithAnnotationInstances FmxNGTWithModifiers)
]

{ #category : #meta }
FmxNGStNamedEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #testing }
FmxNGStNamedEntity >> hasUniqueMooseNameInModel [
	" all subclasses should call the method: 'resetMooseName' if a change causes the moosename to change "
	^true
]

{ #category : #testing }
FmxNGStNamedEntity >> mooseNameOn: stream [
	self name ifNotNil: [ :n | stream nextPutAll: n ]
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

{ #category : #testing }
FmxNGStNamedEntity >> name: aString [
	name := aString.
	self resetMooseName

]

{ #category : #testing }
FmxNGStNamedEntity >> resetMooseName [
	super resetMooseName.
	self children do: [ :entity | entity resetMooseName ]
]
