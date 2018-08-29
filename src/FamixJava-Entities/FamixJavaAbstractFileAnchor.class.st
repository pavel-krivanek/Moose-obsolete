Class {
	#name : #FamixJavaAbstractFileAnchor,
	#superclass : #FamixJavaSourceAnchor,
	#traits : 'FamixTFileAnchor',
	#classTraits : 'FamixTFileAnchor classTrait',
	#category : #'FamixJava-Entities-Entities'
}

{ #category : #meta }
FamixJavaAbstractFileAnchor class >> annotation [

	<MSEClass: #AbstractFileAnchor super: #FamixJavaSourceAnchor>
	<package: #'FamixJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixJavaAbstractFileAnchor class >> generatedSlotNames [
	<generated>
	'FamixJavaAbstractFileAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixJavaAbstractFileAnchor class >> generatedTraitNames [
	<generated>
	^ #(FamixTFileAnchor)
]

{ #category : #meta }
FamixJavaAbstractFileAnchor class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FamixJavaAbstractFileAnchor >> <= aFileAnchor [
	^ self fileName <= aFileAnchor fileName
]

{ #category : #'as yet unclassified' }
FamixJavaAbstractFileAnchor >> intervalAsCharPos [
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
FamixJavaAbstractFileAnchor >> mooseNameOn: aStream [
	aStream nextPutAll: self fileName asString
]
