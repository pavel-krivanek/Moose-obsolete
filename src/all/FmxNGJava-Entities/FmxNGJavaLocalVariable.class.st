Class {
	#name : #FmxNGJavaLocalVariable,
	#superclass : #FmxNGJavaStructuralEntity,
	#traits : 'FmxNGTLocalVariable',
	#classTraits : 'FmxNGTLocalVariable classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaLocalVariable class >> annotation [

	<MSEClass: #LocalVariable super: #FmxNGJavaStructuralEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaLocalVariable class >> generatedSlotNames [
	<generated>
	'FmxNGJavaLocalVariable class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaLocalVariable class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTLocalVariable)
]

{ #category : #meta }
FmxNGJavaLocalVariable class >> requirements [

	<generated>
	^ { FmxNGJavaMethod }
]

{ #category : #'as yet unclassified' }
FmxNGJavaLocalVariable >> accept: aVisitor [

	aVisitor visitLocalVariable: self
]

{ #category : #accessing }
FmxNGJavaLocalVariable >> belongsTo [

	<generated>
	^ self parentBehaviouralEntity

]

{ #category : #accessing }
FmxNGJavaLocalVariable >> belongsTo: anObject [

	<generated>
	self parentBehaviouralEntity: anObject

]

{ #category : #'as yet unclassified' }
FmxNGJavaLocalVariable >> mooseNameOn: stream [ 
	| parent |
	parent := self parentBehaviouralEntity.
	parent ifNotNil: 
		[ parent mooseNameOn: stream.
		stream nextPut: $. ].
	self name ifNotNil: [stream nextPutAll: self name]
]

{ #category : #'as yet unclassified' }
FmxNGJavaLocalVariable >> namespaceScope [
	^ self parentBehaviouralEntity namespaceScope
]

{ #category : #'as yet unclassified' }
FmxNGJavaLocalVariable >> packageScope [
	^ self parentBehaviouralEntity packageScope
]

{ #category : #'as yet unclassified' }
FmxNGJavaLocalVariable >> printOn: stream [ 
	| parent |
	self name ifNotNil: [ stream nextPutAll: self name ].
	stream nextPutAll: ' (local variable'.
	parent := self parentBehaviouralEntity.
	parent ifNotNil: [
		stream nextPutAll: ' in '.
		parent printOn: stream ].
	stream nextPut: $)

]

{ #category : #'as yet unclassified' }
FmxNGJavaLocalVariable >> typeScope [
	^ self parentBehaviouralEntity typeScope
]
