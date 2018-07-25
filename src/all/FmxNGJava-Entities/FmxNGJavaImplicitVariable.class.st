Class {
	#name : #FmxNGJavaImplicitVariable,
	#superclass : #FmxNGJavaStructuralEntity,
	#traits : 'FmxNGTImplicitVariable',
	#classTraits : 'FmxNGTImplicitVariable classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaImplicitVariable class >> annotation [

	<MSEClass: #ImplicitVariable super: #FmxNGJavaStructuralEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaImplicitVariable class >> generatedSlotNames [
	<generated>
	'FmxNGJavaImplicitVariable class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaImplicitVariable class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTImplicitVariable)
]

{ #category : #meta }
FmxNGJavaImplicitVariable class >> requirements [

	<generated>
	^ { FmxNGJavaMethod }
]

{ #category : #'as yet unclassified' }
FmxNGJavaImplicitVariable >> accept: aVisitor [
	aVisitor visitImplicitVariable: self
]

{ #category : #'as yet unclassified' }
FmxNGJavaImplicitVariable >> belongsTo [
	^ self parentBehaviouralEntity  
]

{ #category : #'as yet unclassified' }
FmxNGJavaImplicitVariable >> belongsTo: aBehaviouralEntity [
	self parentBehaviouralEntity: aBehaviouralEntity 
]

{ #category : #'as yet unclassified' }
FmxNGJavaImplicitVariable >> container [
	self deprecated: 'Please use parentBehaviouralEntity instead'.  
	^ self parentBehaviouralEntity
]

{ #category : #'as yet unclassified' }
FmxNGJavaImplicitVariable >> container: aBehaviouralEntity [
	self deprecated: 'Please use #parentBehaviouralEntity: instead'.
	^ self parentBehaviouralEntity: aBehaviouralEntity
]

{ #category : #'as yet unclassified' }
FmxNGJavaImplicitVariable >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self container: (aVisitor visit: anEntity container).

]

{ #category : #'as yet unclassified' }
FmxNGJavaImplicitVariable >> isImplicitVariable [
	^true
]

{ #category : #'as yet unclassified' }
FmxNGJavaImplicitVariable >> mooseNameOn: stream [ 
	| parent |
	parent := self parentBehaviouralEntity.
	parent ifNotNil: 
		[ parent mooseNameOn: stream.
		stream nextPut: $. ].

	self name ifNotNil: [ stream nextPutAll: self name ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaImplicitVariable >> namespaceScope [
	^ self parentBehaviouralEntity namespaceScope
]

{ #category : #'as yet unclassified' }
FmxNGJavaImplicitVariable >> packageScope [
	^ self parentBehaviouralEntity packageScope
]

{ #category : #'as yet unclassified' }
FmxNGJavaImplicitVariable >> printOn: aStream [ 
	| parent |
	parent := self parentBehaviouralEntity.
	parent ifNotNil: 
		[ aStream nextPutAll: parent name.
		  aStream nextPut: $. ].
	self name ifNotNil: [ aStream nextPutAll: self name ].
	aStream nextPutAll: ' (ImplicitVariable)'
]

{ #category : #'as yet unclassified' }
FmxNGJavaImplicitVariable >> typeScope [
	^ self parentBehaviouralEntity typeScope
]
