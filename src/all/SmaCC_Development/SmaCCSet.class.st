Class {
	#name : #SmaCCSet,
	#superclass : #Collection,
	#instVars : [
		'characters',
		'objects'
	],
	#category : #SmaCC_Development
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
		ifTrue:
			[ | index mask |
			index := newObject asInteger // 8 + 1.
			mask := 1 bitShift: newObject asInteger \\ 8.
			characters at: index put: ((characters at: index) bitOr: mask).
			newObject ]
		ifFalse: [ objects add: newObject ]
]

{ #category : #enumerating }
SmaCCSet >> do: aBlock [
	objects do: aBlock.
	characters
		keysAndValuesDo:
			[ :key :value | 
			1 to: 8 do:
				[ :j | 
				((value bitShift: 1 - j) bitAnd: 1) = 1
					ifTrue: [ aBlock value: (Character value: (key - 1) * 8 + j - 1) ] ] ]
]

{ #category : #testing }
SmaCCSet >> includes: anObject [
	^ (anObject isKindOf: Character)
		ifTrue:
			[ | index mask |
			index := anObject asInteger // 8 + 1.
			mask := 1 bitShift: anObject asInteger \\ 8.
			^ ((characters at: index) bitAnd: mask) = mask ]
		ifFalse: [ objects includes: anObject ]
]

{ #category : #initialize-release }
SmaCCSet >> initialize [
	super initialize.
	characters := ByteArray new: 16r10000 / 8.
	objects := Set new
]

{ #category : #removing }
SmaCCSet >> remove: oldObject ifAbsent: aBlock [
	(oldObject isKindOf: Character)
		ifTrue:
			[ | index mask |
			index := oldObject asInteger // 8 + 1.
			mask := 1 bitShift: oldObject asInteger \\ 8.
			((characters at: index) bitAnd: mask) = mask
				ifTrue:
					[ characters at: index put: ((characters at: index) bitXor: mask).
					^ oldObject ]
				ifFalse: [ ^ aBlock value ] ]
		ifFalse: [ ^ objects remove: oldObject ifAbsent: aBlock ]
]
