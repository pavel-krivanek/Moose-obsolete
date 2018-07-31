Class {
	#name : #FmxNGJavaEnumValue,
	#superclass : #FmxNGJavaStructuralEntity,
	#traits : 'FmxNGTEnumValue',
	#classTraits : 'FmxNGTEnumValue classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaEnumValue class >> annotation [

	<MSEClass: #EnumValue super: #FmxNGJavaStructuralEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaEnumValue class >> generatedSlotNames [
	<generated>
	'FmxNGJavaEnumValue class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaEnumValue class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTEnumValue)
]

{ #category : #meta }
FmxNGJavaEnumValue class >> requirements [

	<generated>
	^ { FmxNGJavaEnum }
]

{ #category : #'as yet unclassified' }
FmxNGJavaEnumValue >> belongsTo [

	<generated>
	^ self parentEnum

]

{ #category : #accessing }
FmxNGJavaEnumValue >> belongsTo: anObject [

	<generated>
	self parentEnum: anObject

]
