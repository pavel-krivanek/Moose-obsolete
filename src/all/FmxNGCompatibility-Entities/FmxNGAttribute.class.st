Class {
	#name : #FmxNGAttribute,
	#superclass : #FmxNGStructuralEntity,
	#traits : 'FmxNGTAttribute + FmxNGTWithClassScope',
	#classTraits : 'FmxNGTAttribute classTrait + FmxNGTWithClassScope classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGAttribute class >> annotation [

	<generated>
	<MSEClass: #Attribute super: #FmxNGStructuralEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGAttribute class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGAttribute class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAttribute FmxNGTWithClassScope)
]

{ #category : #meta }
FmxNGAttribute class >> requirements [

	<generated>
	^ {  }
]
