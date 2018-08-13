Class {
	#name : #FmxNGStImplicitVariable,
	#superclass : #FmxNGStStructuralEntity,
	#traits : 'FmxNGTImplicitVariable',
	#classTraits : 'FmxNGTImplicitVariable classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStImplicitVariable class >> annotation [

	<MSEClass: #ImplicitVariable super: #FmxNGStStructuralEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStImplicitVariable class >> generatedSlotNames [
	<generated>
	'FmxNGStImplicitVariable class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStImplicitVariable class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTImplicitVariable)
]

{ #category : #meta }
FmxNGStImplicitVariable class >> requirements [

	<generated>
	^ { FmxNGStMethod }
]

{ #category : #accessing }
FmxNGStImplicitVariable >> belongsTo [

	<generated>
	^ self parentBehaviouralEntity

]

{ #category : #accessing }
FmxNGStImplicitVariable >> belongsTo: anObject [

	<generated>
	self parentBehaviouralEntity: anObject

]

{ #category : #testing }
FmxNGStImplicitVariable >> isImplicitVariable [
	^true
]

{ #category : #testing }
FmxNGStImplicitVariable >> isSelf [
	^ self name = #self
]

{ #category : #testing }
FmxNGStImplicitVariable >> isSuper [
	^ self name == #super
]

{ #category : #testing }
FmxNGStImplicitVariable >> mooseNameOn: stream [ 
	| parent |
	parent := self parentBehaviouralEntity.
	parent ifNotNil: 
		[ parent mooseNameOn: stream.
		stream nextPut: $. ].

	self name ifNotNil: [ stream nextPutAll: self name ]
]

{ #category : #testing }
FmxNGStImplicitVariable >> packageScope [
	^ self parentBehaviouralEntity packageScope
]

{ #category : #testing }
FmxNGStImplicitVariable >> typeScope [
	^ self parentBehaviouralEntity typeScope
]
