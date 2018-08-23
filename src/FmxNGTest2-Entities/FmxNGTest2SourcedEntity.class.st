Class {
	#name : #FmxNGTest2SourcedEntity,
	#superclass : #FmxNGTest2Entity,
	#traits : 'FmxNGTWithComments + FmxNGTWithSourceAnchor + FmxNGTWithSourceLanguage',
	#classTraits : 'FmxNGTWithComments classTrait + FmxNGTWithSourceAnchor classTrait + FmxNGTWithSourceLanguage classTrait',
	#category : #'FmxNGTest2-Entities-Entities'
}

{ #category : #meta }
FmxNGTest2SourcedEntity class >> annotation [

	<MSEClass: #SourcedEntity super: #FmxNGTest2Entity>
	<package: #'FmxNGTest2-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGTest2SourcedEntity class >> generatedSlotNames [
	<generated>
	'FmxNGTest2SourcedEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTest2SourcedEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTWithComments FmxNGTWithSourceAnchor FmxNGTWithSourceLanguage)
]

{ #category : #meta }
FmxNGTest2SourcedEntity class >> requirements [

	<generated>
	^ {  }
]
