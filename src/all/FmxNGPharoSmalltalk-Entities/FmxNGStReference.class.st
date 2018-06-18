Class {
	#name : #FmxNGStReference,
	#superclass : #FmxNGStAssociation,
	#traits : 'FmxNGTReference',
	#classTraits : 'FmxNGTReference classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStReference class >> annotation [

	<generated>
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

{ #category : #'instance creation' }
FmxNGStReference >> from [
	^ self source. 
]

{ #category : #'instance creation' }
FmxNGStReference >> from: aSource [
	self source: aSource . 
]

{ #category : #'instance creation' }
FmxNGStReference >> to [
	^ self target
]

{ #category : #'instance creation' }
FmxNGStReference >> to: aTarget [
	self target: aTarget
]
