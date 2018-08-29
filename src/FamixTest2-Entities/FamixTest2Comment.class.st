Class {
	#name : #FamixTest2Comment,
	#superclass : #FamixTest2SourcedEntity,
	#traits : 'FamixTComment',
	#classTraits : 'FamixTComment classTrait',
	#category : #'FamixTest2-Entities-Entities'
}

{ #category : #meta }
FamixTest2Comment class >> annotation [

	<MSEClass: #Comment super: #FamixTest2SourcedEntity>
	<package: #'FamixTest2-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixTest2Comment class >> generatedSlotNames [
	<generated>
	'FamixTest2Comment class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixTest2Comment class >> generatedTraitNames [
	<generated>
	^ #(FamixTComment)
]

{ #category : #meta }
FamixTest2Comment class >> requirements [

	<generated>
	^ {  }
]
