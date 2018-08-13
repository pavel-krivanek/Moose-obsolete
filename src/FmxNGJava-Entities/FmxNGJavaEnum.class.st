Class {
	#name : #FmxNGJavaEnum,
	#superclass : #FmxNGJavaType,
	#traits : 'FmxNGTWithEnumValues',
	#classTraits : 'FmxNGTWithEnumValues classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaEnum class >> annotation [

	<MSEClass: #Enum super: #FmxNGJavaType>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaEnum class >> generatedSlotNames [
	<generated>
	'FmxNGJavaEnum class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaEnum class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTWithEnumValues)
]

{ #category : #meta }
FmxNGJavaEnum class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaEnum >> values [
	^ self enumValues
]

{ #category : #'as yet unclassified' }
FmxNGJavaEnum >> values: anObject [
	self enumValues: anObject
]
