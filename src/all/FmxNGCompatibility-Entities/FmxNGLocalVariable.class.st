Class {
	#name : #FmxNGLocalVariable,
	#superclass : #FmxNGStructuralEntity,
	#traits : 'FmxNGTLocalVariable',
	#classTraits : 'FmxNGTLocalVariable classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGLocalVariable class >> annotation [

	<generated>
	<MSEClass: #LocalVariable super: #FmxNGStructuralEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGLocalVariable class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGLocalVariable class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTLocalVariable)
]

{ #category : #meta }
FmxNGLocalVariable class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-Extensions' }
FmxNGLocalVariable >> accept: aVisitor [

	aVisitor visitLocalVariable: self
]

{ #category : #accessing }
FmxNGLocalVariable >> belongsTo [

	^ self parentBehaviouralEntity
]

{ #category : #'Famix-Implementation' }
FmxNGLocalVariable >> mooseNameOn: stream [ 
	| parent |
	parent := self parentBehaviouralEntity.
	parent ifNotNil: 
		[ parent mooseNameOn: stream.
		stream nextPut: $. ].
	self name ifNotNil: [stream nextPutAll: self name]
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGLocalVariable >> namespaceScope [
	^ self parentBehaviouralEntity namespaceScope
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGLocalVariable >> packageScope [
	^ self parentBehaviouralEntity packageScope
]

{ #category : #'Famix-Implementation' }
FmxNGLocalVariable >> printOn: stream [ 
	| parent |
	self name ifNotNil: [ stream nextPutAll: self name ].
	stream nextPutAll: ' (local variable'.
	parent := self parentBehaviouralEntity.
	parent ifNotNil: [
		stream nextPutAll: ' in '.
		parent printOn: stream ].
	stream nextPut: $)

]

{ #category : #'moosechef-scoping-filtering' }
FmxNGLocalVariable >> typeScope [
	^ self parentBehaviouralEntity typeScope
]
