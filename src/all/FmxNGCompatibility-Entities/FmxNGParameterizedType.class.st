Class {
	#name : #FmxNGParameterizedType,
	#superclass : #FmxNGType,
	#traits : 'FmxNGTParameterizedType + FmxNGTWithParameterizedTypeUsers',
	#classTraits : 'FmxNGTParameterizedType classTrait + FmxNGTWithParameterizedTypeUsers classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGParameterizedType class >> annotation [

	<generated>
	<MSEClass: #ParameterizedType super: #FmxNGType>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGParameterizedType class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGParameterizedType class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTParameterizedType FmxNGTWithParameterizedTypeUsers)
]

{ #category : #meta }
FmxNGParameterizedType class >> requirements [

	<generated>
	^ {  }
]
