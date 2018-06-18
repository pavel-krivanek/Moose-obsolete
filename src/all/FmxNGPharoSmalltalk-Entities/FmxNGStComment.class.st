Class {
	#name : #FmxNGStComment,
	#superclass : #FmxNGStSourcedEntity,
	#traits : 'FmxNGTComment',
	#classTraits : 'FmxNGTComment classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStComment class >> annotation [

	<generated>
	<MSEClass: #Comment super: #FmxNGStSourcedEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStComment class >> generatedSlotNames [
	<generated>
	'FmxNGStComment class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStComment class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTComment)
]

{ #category : #meta }
FmxNGStComment class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FmxNGStComment >> belongsTo [
	
	^ self container
]
