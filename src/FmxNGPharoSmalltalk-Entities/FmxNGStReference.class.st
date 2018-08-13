Class {
	#name : #FmxNGStReference,
	#superclass : #FmxNGStAssociation,
	#traits : 'FmxNGTReference',
	#classTraits : 'FmxNGTReference classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStReference class >> annotation [

	<MSEClass: #Reference super: #FmxNGStAssociation>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStReference class >> generatedSlotNames [
	<generated>
	'FmxNGStReference class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStReference class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTReference)
]

{ #category : #meta }
FmxNGStReference class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'instance creation' }
FmxNGStReference class >> source: source target: target [
	^ self new source: source; target: target
]
