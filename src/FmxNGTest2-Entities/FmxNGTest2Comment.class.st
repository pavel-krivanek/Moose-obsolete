Class {
	#name : #FmxNGTest2Comment,
	#superclass : #FmxNGTest2SourcedEntity,
	#traits : 'FmxNGTComment',
	#classTraits : 'FmxNGTComment classTrait',
	#category : #'FmxNGTest2-Entities-Entities'
}

{ #category : #meta }
FmxNGTest2Comment class >> annotation [

	<MSEClass: #Comment super: #FmxNGTest2SourcedEntity>
	<package: #'FmxNGTest2-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGTest2Comment class >> generatedSlotNames [
	<generated>
	'FmxNGTest2Comment class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTest2Comment class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTComment)
]

{ #category : #meta }
FmxNGTest2Comment class >> requirements [

	<generated>
	^ {  }
]
