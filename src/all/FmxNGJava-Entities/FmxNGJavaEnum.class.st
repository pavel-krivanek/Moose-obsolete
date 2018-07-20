Class {
	#name : #FmxNGJavaEnum,
	#superclass : #FmxNGJavaType,
	#traits : 'FmxNGTWithEnumValues',
	#classTraits : 'FmxNGTWithEnumValues classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaEnum class >> annotation [

	<generated>
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
