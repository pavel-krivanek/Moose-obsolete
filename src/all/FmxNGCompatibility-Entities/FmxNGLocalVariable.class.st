Class {
	#name : #FmxNGLocalVariable,
	#superclass : #FmxNGLocalVariableGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

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
