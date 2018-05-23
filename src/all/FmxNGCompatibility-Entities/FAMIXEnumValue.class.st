Class {
	#name : #FAMIXEnumValue,
	#superclass : #FAMIXStructuralEntity,
	#traits : 'FmxNGTEnumValue',
	#classTraits : 'FmxNGTEnumValue classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXEnumValue class >> annotation [

	<generated>
	<MSEClass: #EnumValue super: #FAMIXStructuralEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FAMIXEnumValue class >> generatedSlotNames [
	<generated>
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
	^ {  }
]

{ #category : #accessing }
FAMIXEnumValue >> belongsTo [

	^ self parentEnum
]

{ #category : #printing }
FAMIXEnumValue >> mooseNameOn: aStream [
	(self belongsTo isNotNil and: [ self belongsTo name isNotNil ])
		ifTrue: [ self belongsTo mooseNameOn: aStream.
			aStream << self mooseNameSeparator ].
	super mooseNameOn: aStream
]

{ #category : #printing }
FAMIXEnumValue >> mooseNameSeparator [
	^ '::'
]
