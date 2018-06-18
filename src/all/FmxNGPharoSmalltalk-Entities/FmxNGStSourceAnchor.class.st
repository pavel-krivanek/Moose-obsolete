Class {
	#name : #FmxNGStSourceAnchor,
	#superclass : #FmxNGStEntity,
	#traits : 'FmxNGTSourceAnchor',
	#classTraits : 'FmxNGTSourceAnchor classTrait',
	#instVars : [
		'#pharoEntity',
		'#element => FMOne type: #FmxNGTWithSourceAnchor opposite: #sourceAnchor',
		'#source'
	],
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStSourceAnchor class >> annotation [

	<generated>
	<MSEClass: #SourceAnchor super: #FmxNGStEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStSourceAnchor class >> generatedSlotNames [
	<generated>
	'FmxNGStSourceAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStSourceAnchor class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTSourceAnchor)
]

{ #category : #meta }
FmxNGStSourceAnchor class >> requirements [

	<generated>
	^ {  }
]

{ #category : #initialization }
FmxNGStSourceAnchor >> containerFiles [
	^ {  }
]

{ #category : #accessing }
FmxNGStSourceAnchor >> element: anElement [

	element := anElement.
	element sourceAnchor = self ifFalse: [  element sourceAnchor: self ]

]

{ #category : #initialization }
FmxNGStSourceAnchor >> initialize [
	super initialize.
	pharoEntity := WeakArray new: 1.
]

{ #category : #accessing }
FmxNGStSourceAnchor >> lineCount [
	^ self sourceText ifNotNil: #lineCount ifNil: [ self notExistentMetricValue ]
]

{ #category : #accessing }
FmxNGStSourceAnchor >> pharoEntity [
	"pharoEntity var is a 1-element weak array"
	
	^ pharoEntity at: 1
]

{ #category : #accessing }
FmxNGStSourceAnchor >> pharoEntity: anObject [
	"point to object weakly"
	
	pharoEntity at: 1 put: anObject 
]

{ #category : #accessing }
FmxNGStSourceAnchor >> source [
	<MSEProperty: #source type: #String>
	<MSEComment: 'Actual source code of the source entity'>
	^ source
]

{ #category : #accessing }
FmxNGStSourceAnchor >> source: anObject [
	source := anObject
]

{ #category : #accessing }
FmxNGStSourceAnchor >> sourceText [
	^ self source
]
