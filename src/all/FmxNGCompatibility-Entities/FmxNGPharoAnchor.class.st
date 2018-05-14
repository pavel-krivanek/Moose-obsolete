Class {
	#name : #FmxNGPharoAnchor,
	#superclass : #FmxNGSourceAnchor,
	#instVars : [
		'pharoEntity'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGPharoAnchor class >> annotation [

	<generated>
	<MSEClass: #PharoAnchor super: #FmxNGSourceAnchor>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGPharoAnchor class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGPharoAnchor class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxNGPharoAnchor class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-File' }
FmxNGPharoAnchor >> containerFiles [
	^ {  }
]

{ #category : #initialization }
FmxNGPharoAnchor >> initialize [
	super initialize.
	pharoEntity := WeakArray new: 1.
]

{ #category : #accessing }
FmxNGPharoAnchor >> lineCount [
	^ self sourceText ifNotNil: #lineCount ifNil: [ self notExistentMetricValue ]
]

{ #category : #accessing }
FmxNGPharoAnchor >> pharoEntity [
	"pharoEntity var is a 1-element weak array"
	
	^ pharoEntity at: 1
]

{ #category : #accessing }
FmxNGPharoAnchor >> pharoEntity: anObject [
	"point to object weakly"
	
	pharoEntity at: 1 put: anObject 
]

{ #category : #accessing }
FmxNGPharoAnchor >> sourceText [
	^ self pharoEntity ifNotNil: #definition  
]
