Class {
	#name : #FmxNGStParameter,
	#superclass : #FmxNGStStructuralEntity,
	#traits : 'FmxNGTParameter',
	#classTraits : 'FmxNGTParameter classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStParameter class >> annotation [

	<MSEClass: #Parameter super: #FmxNGStStructuralEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStParameter class >> generatedSlotNames [
	<generated>
	'FmxNGStParameter class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStParameter class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTParameter)
]

{ #category : #meta }
FmxNGStParameter class >> requirements [

	<generated>
	^ { FmxNGStMethod }
]

{ #category : #accessing }
FmxNGStParameter >> mooseNameOn: stream [ 
	| parent |
	parent := self parentBehaviouralEntity.
	parent ifNotNil: 
		[ parent mooseNameOn: stream.
		stream nextPut: $. ].
	self name ifNotNil: [stream nextPutAll: self name]
]

{ #category : #accessing }
FmxNGStParameter >> packageScope [
	^ self parentBehaviouralEntity packageScope
]

{ #category : #accessing }
FmxNGStParameter >> typeScope [
	^ self parentBehaviouralEntity typeScope
]
