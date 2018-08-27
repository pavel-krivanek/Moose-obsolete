Class {
	#name : #FmxNGTest1Method,
	#superclass : #FmxNGTest1NamedEntity,
	#traits : 'FmxNGTMethod',
	#classTraits : 'FmxNGTMethod classTrait',
	#category : #'FmxNGTest1-Entities-Entities'
}

{ #category : #meta }
FmxNGTest1Method class >> annotation [

	<MSEClass: #Method super: #FmxNGTest1NamedEntity>
	<package: #'FmxNGTest1-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGTest1Method class >> generatedSlotNames [
	<generated>
	'FmxNGTest1Method class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTest1Method class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTMethod)
]

{ #category : #meta }
FmxNGTest1Method class >> requirements [

	<generated>
	^ { FmxNGTest1Class }
]

{ #category : #accessing }
FmxNGTest1Method >> belongsTo [

	<generated>
	^ self parentType

]

{ #category : #accessing }
FmxNGTest1Method >> belongsTo: anObject [

	<generated>
	self parentType: anObject

]

{ #category : #printing }
FmxNGTest1Method >> mooseNameOn: stream [ 
	| parent |
	parent := self belongsTo.
	parent ifNotNil: 
		[ parent mooseNameOn: stream.
		stream nextPut: $. ].
		self name ifNotNil: [ stream nextPutAll: self name]
]
