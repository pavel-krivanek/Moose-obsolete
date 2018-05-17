Class {
	#name : #FmxNGImplicitVariable,
	#superclass : #FmxNGStructuralEntity,
	#traits : 'FmxNGTImplicitVariable',
	#classTraits : 'FmxNGTImplicitVariable classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGImplicitVariable class >> annotation [

	<generated>
	<MSEClass: #ImplicitVariable super: #FmxNGStructuralEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGImplicitVariable class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGImplicitVariable class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTImplicitVariable)
]

{ #category : #meta }
FmxNGImplicitVariable class >> requirements [

	<generated>
	^ {  }
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

{ #category : #accessing }
FmxNGImplicitVariable >> container [
	self deprecated: 'Please use parentBehaviouralEntity instead'.  
	^ self parentBehaviouralEntity
]

{ #category : #accessing }
FmxNGImplicitVariable >> container: aBehaviouralEntity [
	self deprecated: 'Please use #parentBehaviouralEntity: instead'.
	^ self parentBehaviouralEntity: aBehaviouralEntity
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

{ #category : #'moosechef-scoping-filtering' }
FmxNGImplicitVariable >> namespaceScope [
	^ self parentBehaviouralEntity namespaceScope
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGImplicitVariable >> packageScope [
	^ self parentBehaviouralEntity packageScope
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

{ #category : #'moosechef-scoping-filtering' }
FmxNGImplicitVariable >> typeScope [
	^ self parentBehaviouralEntity typeScope
]
