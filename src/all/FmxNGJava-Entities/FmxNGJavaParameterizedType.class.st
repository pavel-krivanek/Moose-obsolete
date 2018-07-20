Class {
	#name : #FmxNGJavaParameterizedType,
	#superclass : #FmxNGJavaType,
	#traits : 'FmxNGTParameterizedType + FmxNGTWithParameterizedTypeUsers',
	#classTraits : 'FmxNGTParameterizedType classTrait + FmxNGTWithParameterizedTypeUsers classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaParameterizedType class >> annotation [

	<generated>
	<MSEClass: #ParameterizedType super: #FmxNGJavaType>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaParameterizedType class >> generatedSlotNames [
	<generated>
	'FmxNGJavaParameterizedType class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaParameterizedType class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTParameterizedType FmxNGTWithParameterizedTypeUsers)
]

{ #category : #meta }
FmxNGJavaParameterizedType class >> requirements [

	<generated>
	^ {  }
]
