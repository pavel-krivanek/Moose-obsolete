Class {
	#name : #FamixTest1File,
	#superclass : #FamixTest1AbstractFile,
	#traits : 'FamixTFile',
	#classTraits : 'FamixTFile classTrait',
	#category : #'FamixTest1-Entities-Entities'
}

{ #category : #meta }
FamixTest1File class >> annotation [

	<MSEClass: #File super: #FamixTest1AbstractFile>
	<package: #'FamixTest1-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixTest1File class >> generatedSlotNames [
	<generated>
	'FamixTest1File class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixTest1File class >> generatedTraitNames [
	<generated>
	^ #(FamixTFile)
]

{ #category : #meta }
FamixTest1File class >> requirements [

	<generated>
	^ {  }
]
