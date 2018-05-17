Class {
	#name : #FmxNGEnumValue,
	#superclass : #FmxNGStructuralEntity,
	#traits : 'FmxNGTEnumValue',
	#classTraits : 'FmxNGTEnumValue classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGEnumValue class >> annotation [

	<generated>
	<MSEClass: #EnumValue super: #FmxNGStructuralEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGEnumValue class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGEnumValue class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTEnumValue)
]

{ #category : #meta }
FmxNGEnumValue class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FmxNGEnumValue >> belongsTo [

	^ self parentEnum
]

{ #category : #printing }
FmxNGEnumValue >> mooseNameOn: aStream [
	(self belongsTo isNotNil and: [ self belongsTo name isNotNil ])
		ifTrue: [ self belongsTo mooseNameOn: aStream.
			aStream << self mooseNameSeparator ].
	super mooseNameOn: aStream
]

{ #category : #printing }
FmxNGEnumValue >> mooseNameSeparator [
	^ '::'
]
