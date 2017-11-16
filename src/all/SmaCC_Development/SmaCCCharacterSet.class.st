Class {
	#name : #SmaCCCharacterSet,
	#superclass : #SmaCCIntegerSet,
	#category : 'SmaCC_Development'
}

{ #category : #adding }
SmaCCCharacterSet >> add: aCharacter [
	super add: aCharacter asInteger.
	^ aCharacter
]

{ #category : #converting }
SmaCCCharacterSet >> asString [
	| stream |
	stream := WriteStream on: String new.
	self do: [ :each | stream nextPut: each ].
	^ stream contents
]

{ #category : #enumerating }
SmaCCCharacterSet >> do: aBlock [
	^ super do: [ :each | aBlock value: (Character value: each) ]
]

{ #category : #testing }
SmaCCCharacterSet >> includes: aCharacter [
	^ super includes: aCharacter asInteger
]

{ #category : #removing }
SmaCCCharacterSet >> remove: aCharacter ifAbsent: aBlock [
	(self includes: aCharacter)
		ifFalse: [ ^ aBlock value ].
	super remove: aCharacter asInteger ifAbsent: aBlock.
	^ aCharacter
]
