Class {
	#name : #FAMIXSourceTextAnchor,
	#superclass : #FAMIXSourceAnchor,
	#instVars : [
		'source'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXSourceTextAnchor class >> annotation [

	<generated>
	<MSEClass: #SourceTextAnchor super: #FAMIXSourceAnchor>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FAMIXSourceTextAnchor class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXSourceTextAnchor class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FAMIXSourceTextAnchor class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-File' }
FAMIXSourceTextAnchor >> containerFiles [
	^ {}
]

{ #category : #accessing }
FAMIXSourceTextAnchor >> lineCount [
	^ self sourceText ifNotNil: #lineCount ifNil: [ self notExistentMetricValue ]
]

{ #category : #accessing }
FAMIXSourceTextAnchor >> source [
	<MSEProperty: #source type: #String>
	<MSEComment: 'Actual source code of the source entity'>
	^ source
]

{ #category : #accessing }
FAMIXSourceTextAnchor >> source: anObject [
	source := anObject
]

{ #category : #accessing }
FAMIXSourceTextAnchor >> sourceText [
	^ self source
]
