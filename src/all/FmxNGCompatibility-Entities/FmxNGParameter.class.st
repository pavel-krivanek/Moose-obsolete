Class {
	#name : #FmxNGParameter,
	#superclass : #FmxNGParameterGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #'Famix-Extensions' }
FmxNGParameter >> accept: aVisitor [

	aVisitor visitParameter: self
]

{ #category : #accessing }
FmxNGParameter >> belongsTo [

	^ self parentBehaviouralEntity
]

{ #category : #accessing }
FmxNGParameter >> belongsTo: aBehaviouralEntity [ 
	self parentBehaviouralEntity: aBehaviouralEntity 
]

{ #category : #'Famix-Implementation' }
FmxNGParameter >> mooseNameOn: stream [ 
	| parent |
	parent := self parentBehaviouralEntity.
	parent ifNotNil: 
		[ parent mooseNameOn: stream.
		stream nextPut: $. ].
	self name ifNotNil: [stream nextPutAll: self name]
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGParameter >> namespaceScope [
	^ self parentBehaviouralEntity namespaceScope
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGParameter >> packageScope [
	^ self parentBehaviouralEntity packageScope
]

{ #category : #'Famix-Extensions' }
FmxNGParameter >> parentType [
	^self parentBehaviouralEntity parentType
]

{ #category : #'Famix-Implementation' }
FmxNGParameter >> printOn: stream [ 
	| parent |
	self name ifNotNil: [ stream nextPutAll: self name ].
	stream nextPutAll: ' (parameter'.
	parent := self parentBehaviouralEntity.
	parent ifNotNil: [
		stream nextPutAll: ' in '.
		parent printOn: stream ].
	stream nextPut: $)

]

{ #category : #'moosechef-scoping-filtering' }
FmxNGParameter >> typeScope [
	^ self parentBehaviouralEntity typeScope
]
