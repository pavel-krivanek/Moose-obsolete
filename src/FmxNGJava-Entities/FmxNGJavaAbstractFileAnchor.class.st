Class {
	#name : #FmxNGJavaAbstractFileAnchor,
	#superclass : #FmxNGJavaSourceAnchor,
	#traits : 'FmxNGTFileAnchor',
	#classTraits : 'FmxNGTFileAnchor classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaAbstractFileAnchor class >> annotation [

	<MSEClass: #AbstractFileAnchor super: #FmxNGJavaSourceAnchor>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaAbstractFileAnchor class >> generatedSlotNames [
	<generated>
	'FmxNGJavaAbstractFileAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaAbstractFileAnchor class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTFileAnchor)
]

{ #category : #meta }
FmxNGJavaAbstractFileAnchor class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFileAnchor >> <= aFileAnchor [
	^ self fileName <= aFileAnchor fileName
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFileAnchor >> intervalAsCharPos [
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFileAnchor >> mooseNameOn: aStream [
	aStream nextPutAll: self fileName asString
]
