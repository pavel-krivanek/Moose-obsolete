Class {
	#name : #FmxNGStLocalVariable,
	#superclass : #FmxNGStStructuralEntity,
	#traits : 'FmxNGTLocalVariable',
	#classTraits : 'FmxNGTLocalVariable classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStLocalVariable class >> annotation [

	<MSEClass: #LocalVariable super: #FmxNGStStructuralEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStLocalVariable class >> generatedSlotNames [
	<generated>
	'FmxNGStLocalVariable class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStLocalVariable class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTLocalVariable)
]

{ #category : #meta }
FmxNGStLocalVariable class >> requirements [

	<generated>
	^ { FmxNGStMethod }
]

{ #category : #accessing }
FmxNGStLocalVariable >> belongsTo [

	<generated>
	^ self parentBehaviouralEntity

]

{ #category : #accessing }
FmxNGStLocalVariable >> belongsTo: anObject [

	<generated>
	self parentBehaviouralEntity: anObject

]

{ #category : #accessing }
FmxNGStLocalVariable >> mooseNameOn: stream [ 
	| parent |
	parent := self parentBehaviouralEntity.
	parent ifNotNil: 
		[ parent mooseNameOn: stream.
		stream nextPut: $. ].
	self name ifNotNil: [stream nextPutAll: self name]
]

{ #category : #accessing }
FmxNGStLocalVariable >> packageScope [
	^ self parentBehaviouralEntity packageScope
]
