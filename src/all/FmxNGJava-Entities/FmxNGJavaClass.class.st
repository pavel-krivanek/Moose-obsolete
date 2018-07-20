Class {
	#name : #FmxNGJavaClass,
	#superclass : #FmxNGJavaType,
	#traits : 'FmxNGTClass + FmxNGTWithExceptions',
	#classTraits : 'FmxNGTClass classTrait + FmxNGTWithExceptions classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaClass class >> annotation [

	<generated>
	<MSEClass: #Class super: #FmxNGJavaType>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaClass class >> generatedSlotNames [
	<generated>
	'FmxNGJavaClass class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaClass class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTClass FmxNGTWithExceptions)
]

{ #category : #meta }
FmxNGJavaClass class >> requirements [

	<generated>
	^ {  }
]
