Class {
	#name : #FAMIXEnumValue,
	#superclass : #FAMIXStructuralEntity,
	#traits : 'FmxNGTEnumValue',
	#classTraits : 'FmxNGTEnumValue classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXEnumValue class >> annotation [

	<MSEClass: #EnumValue super: #FAMIXStructuralEntity>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #generator }
FAMIXEnumValue class >> generatedSlotNames [
	<generated>
	'FAMIXEnumValue class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FAMIXEnumValue class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTEnumValue)
]

{ #category : #meta }
FAMIXEnumValue class >> requirements [

	<generated>
	^ { FAMIXEnum }
]

{ #category : #'as yet unclassified' }
FAMIXEnumValue >> belongsTo [

	<generated>
	^ self parentEnum

]

{ #category : #accessing }
FAMIXEnumValue >> belongsTo: anObject [

	<generated>
	self parentEnum: anObject

]
