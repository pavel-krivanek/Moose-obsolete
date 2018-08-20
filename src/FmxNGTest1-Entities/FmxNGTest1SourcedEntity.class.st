Class {
	#name : #FmxNGTest1SourcedEntity,
	#superclass : #FmxNGTest1Entity,
	#traits : 'FmxNGTWithComments + FmxNGTWithFiles + FmxNGTWithSourceAnchor + FmxNGTWithSourceLanguage',
	#classTraits : 'FmxNGTWithComments classTrait + FmxNGTWithFiles classTrait + FmxNGTWithSourceAnchor classTrait + FmxNGTWithSourceLanguage classTrait',
	#category : #'FmxNGTest1-Entities-Entities'
}

{ #category : #meta }
FmxNGTest1SourcedEntity class >> annotation [

	<MSEClass: #SourcedEntity super: #FmxNGTest1Entity>
	<package: #'FmxNGTest1-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGTest1SourcedEntity class >> generatedSlotNames [
	<generated>
	'FmxNGTest1SourcedEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTest1SourcedEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTWithComments FmxNGTWithFiles FmxNGTWithSourceAnchor FmxNGTWithSourceLanguage)
]

{ #category : #meta }
FmxNGTest1SourcedEntity class >> requirements [

	<generated>
	^ {  }
]
