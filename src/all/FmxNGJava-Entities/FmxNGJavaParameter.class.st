Class {
	#name : #FmxNGJavaParameter,
	#superclass : #FmxNGJavaStructuralEntity,
	#traits : 'FmxNGTParameter',
	#classTraits : 'FmxNGTParameter classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaParameter class >> annotation [

	<MSEClass: #Parameter super: #FmxNGJavaStructuralEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaParameter class >> generatedSlotNames [
	<generated>
	'FmxNGJavaParameter class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaParameter class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTParameter)
]

{ #category : #meta }
FmxNGJavaParameter class >> requirements [

	<generated>
	^ { FmxNGJavaMethod }
]

{ #category : #'as yet unclassified' }
FmxNGJavaParameter >> accept: aVisitor [

	aVisitor visitParameter: self
]

{ #category : #accessing }
FmxNGJavaParameter >> belongsTo [

	<generated>
	^ self parentBehaviouralEntity

]

{ #category : #accessing }
FmxNGJavaParameter >> belongsTo: anObject [

	<generated>
	self parentBehaviouralEntity: anObject

]

{ #category : #'as yet unclassified' }
FmxNGJavaParameter >> mooseNameOn: stream [ 
	| parent |
	parent := self parentBehaviouralEntity.
	parent ifNotNil: 
		[ parent mooseNameOn: stream.
		stream nextPut: $. ].
	self name ifNotNil: [stream nextPutAll: self name]
]

{ #category : #'as yet unclassified' }
FmxNGJavaParameter >> namespaceScope [
	^ self parentBehaviouralEntity namespaceScope
]

{ #category : #'as yet unclassified' }
FmxNGJavaParameter >> packageScope [
	^ self parentBehaviouralEntity packageScope
]

{ #category : #'as yet unclassified' }
FmxNGJavaParameter >> parentType [
	^self parentBehaviouralEntity parentType
]

{ #category : #'as yet unclassified' }
FmxNGJavaParameter >> printOn: stream [ 
	| parent |
	self name ifNotNil: [ stream nextPutAll: self name ].
	stream nextPutAll: ' (parameter'.
	parent := self parentBehaviouralEntity.
	parent ifNotNil: [
		stream nextPutAll: ' in '.
		parent printOn: stream ].
	stream nextPut: $)

]

{ #category : #'as yet unclassified' }
FmxNGJavaParameter >> typeScope [
	^ self parentBehaviouralEntity typeScope
]
