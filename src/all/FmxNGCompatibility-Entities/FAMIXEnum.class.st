Class {
	#name : #FAMIXEnum,
	#superclass : #FAMIXType,
	#traits : 'FmxNGTWithEnumValues',
	#classTraits : 'FmxNGTWithEnumValues classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXEnum class >> annotation [

	<generated>
	<MSEClass: #Enum super: #FAMIXType>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #generator }
FAMIXEnum class >> generatedSlotNames [
	<generated>
	'FAMIXEnum class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FAMIXEnum class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTWithEnumValues)
]

{ #category : #meta }
FAMIXEnum class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FAMIXEnum >> values [
	^ self enumValues
]

{ #category : #accessing }
FAMIXEnum >> values: anObject [
	self enumValues: anObject
]
