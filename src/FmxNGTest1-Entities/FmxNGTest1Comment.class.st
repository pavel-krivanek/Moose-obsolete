Class {
	#name : #FmxNGTest1Comment,
	#superclass : #FmxNGTest1SourcedEntity,
	#traits : 'FmxNGTComment',
	#classTraits : 'FmxNGTComment classTrait',
	#category : #'FmxNGTest1-Entities-Entities'
}

{ #category : #meta }
FmxNGTest1Comment class >> annotation [

	<MSEClass: #Comment super: #FmxNGTest1SourcedEntity>
	<package: #'FmxNGTest1-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGTest1Comment class >> generatedSlotNames [
	<generated>
	'FmxNGTest1Comment class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTest1Comment class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTComment)
]

{ #category : #meta }
FmxNGTest1Comment class >> requirements [

	<generated>
	^ {  }
]
