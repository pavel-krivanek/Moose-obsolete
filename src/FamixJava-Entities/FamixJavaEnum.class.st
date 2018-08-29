Class {
	#name : #FamixJavaEnum,
	#superclass : #FamixJavaType,
	#traits : 'FamixTWithEnumValues',
	#classTraits : 'FamixTWithEnumValues classTrait',
	#category : #'FamixJava-Entities-Entities'
}

{ #category : #meta }
FamixJavaEnum class >> annotation [

	<MSEClass: #Enum super: #FamixJavaType>
	<package: #'FamixJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixJavaEnum class >> generatedSlotNames [
	<generated>
	'FamixJavaEnum class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixJavaEnum class >> generatedTraitNames [
	<generated>
	^ #(FamixTWithEnumValues)
]

{ #category : #meta }
FamixJavaEnum class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FamixJavaEnum >> values [
	^ self enumValues
]

{ #category : #'as yet unclassified' }
FamixJavaEnum >> values: anObject [
	self enumValues: anObject
]
