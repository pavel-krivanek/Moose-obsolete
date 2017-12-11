Class {
	#name : #SmaCCSet,
	#superclass : #Collection,
	#instVars : [
		'characters',
		'objects'
	],
	#category : #'SmaCC_Development'
}

{ #category : #'instance creation' }
SmaCCSet class >> new [
	^ super new
		initialize;
		yourself
]

{ #category : #adding }
SmaCCSet >> add: newObject [
	^ (newObject isKindOf: Character)
		ifTrue: [ characters add: newObject ]
		ifFalse: [ objects add: newObject ]
]

{ #category : #adding }
SmaCCSet >> addAll: aCollection [
	(aCollection isKindOf: SmaCCCharacterSet)
		ifTrue: [ ^ characters addAll: aCollection ].
	^ super addAll: aCollection
]

{ #category : #enumerating }
SmaCCSet >> do: aBlock [
	objects do: aBlock.
	characters do: aBlock
]

{ #category : #testing }
SmaCCSet >> includes: anObject [
	^ (anObject isKindOf: Character)
		ifTrue: [ characters includes: anObject ]
		ifFalse: [ objects includes: anObject ]
]

{ #category : #'initialize-release' }
SmaCCSet >> initialize [
	super initialize.
	characters := SmaCCCharacterSet new.
	objects := Set new
]

{ #category : #removing }
SmaCCSet >> remove: oldObject ifAbsent: aBlock [
	^ (oldObject isKindOf: Character)
		ifTrue: [ characters remove: oldObject ifAbsent: aBlock ]
		ifFalse: [ objects remove: oldObject ifAbsent: aBlock ]
]
