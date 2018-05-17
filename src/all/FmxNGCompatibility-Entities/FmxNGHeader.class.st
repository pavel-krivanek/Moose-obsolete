Class {
	#name : #FmxNGHeader,
	#superclass : #FmxNGCFile,
	#traits : 'FmxNGTHeader',
	#classTraits : 'FmxNGTHeader classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGHeader class >> annotation [

	<generated>
	<MSEClass: #Header super: #FmxNGCFile>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGHeader class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGHeader class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTHeader)
]

{ #category : #meta }
FmxNGHeader class >> requirements [

	<generated>
	^ {  }
]

{ #category : #testing }
FmxNGHeader >> isHeader [
	^ true
]
