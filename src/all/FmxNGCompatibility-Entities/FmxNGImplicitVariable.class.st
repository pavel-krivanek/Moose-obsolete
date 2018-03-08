Class {
	#name : #FmxNGImplicitVariable,
	#superclass : #FmxNGImplicitVariableGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGImplicitVariable class >> annotation [

	<MSEClass: #ImplicitVariable super: #FmxNGImplicitVariableGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #'Famix-Extensions' }
FmxNGImplicitVariable >> accept: aVisitor [
	aVisitor visitImplicitVariable: self
]

{ #category : #accessing }
FmxNGImplicitVariable >> belongsTo [
	^ self parentBehaviouralEntity  
]

{ #category : #accessing }
FmxNGImplicitVariable >> belongsTo: aBehaviouralEntity [
	self parentBehaviouralEntity: aBehaviouralEntity 
]

{ #category : #'Famix-Extensions' }
FmxNGImplicitVariable >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self container: (aVisitor visit: anEntity container).

]

{ #category : #'Famix-Implementation' }
FmxNGImplicitVariable >> isImplicitVariable [
	^true
]

{ #category : #'Famix-Implementation' }
FmxNGImplicitVariable >> isSelf [
	^ self name = #self
]

{ #category : #'Famix-Implementation' }
FmxNGImplicitVariable >> isSuper [
	^ self name == #super
]

{ #category : #'Famix-Implementation' }
FmxNGImplicitVariable >> mooseNameOn: stream [ 
	| parent |
	parent := self parentBehaviouralEntity.
	parent ifNotNil: 
		[ parent mooseNameOn: stream.
		stream nextPut: $. ].

	self name ifNotNil: [ stream nextPutAll: self name ]
]

{ #category : #'Famix-Implementation' }
FmxNGImplicitVariable >> printOn: aStream [ 
	| parent |
	parent := self parentBehaviouralEntity.
	parent ifNotNil: 
		[ aStream nextPutAll: parent name.
		  aStream nextPut: $. ].
	self name ifNotNil: [ aStream nextPutAll: self name ].
	aStream nextPutAll: ' (ImplicitVariable)'
]
