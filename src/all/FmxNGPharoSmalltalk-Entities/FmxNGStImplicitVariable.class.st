Class {
	#name : #FmxNGStImplicitVariable,
	#superclass : #FmxNGStStructuralEntity,
	#traits : 'FmxNGTImplicitVariable',
	#classTraits : 'FmxNGTImplicitVariable classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStImplicitVariable class >> annotation [

	<generated>
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
	^ {  }
]

{ #category : #testing }
FmxNGStImplicitVariable >> belongsTo [
	^ self parentBehaviouralEntity  
]

{ #category : #testing }
FmxNGStImplicitVariable >> belongsTo: aBehaviouralEntity [
	self parentBehaviouralEntity: aBehaviouralEntity 
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
