Class {
	#name : #FmxNGSourcedEntity,
	#superclass : #FmxNGEntity,
	#traits : 'FmxNGTWithComments + FmxNGTWithFiles + FmxNGTWithSourceAnchor + FmxNGTWithSourceLanguage',
	#classTraits : 'FmxNGTWithComments classTrait + FmxNGTWithFiles classTrait + FmxNGTWithSourceAnchor classTrait + FmxNGTWithSourceLanguage classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGSourcedEntity class >> annotation [

	<generated>
	<MSEClass: #SourcedEntity super: #FmxNGEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGSourcedEntity class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGSourcedEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTWithComments FmxNGTWithFiles FmxNGTWithSourceAnchor FmxNGTWithSourceLanguage)
]

{ #category : #meta }
FmxNGSourcedEntity class >> requirements [

	<generated>
	^ {  }
]
