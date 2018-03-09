Class {
	#name : #FmxNGTEnumValue,
	#superclass : #FmxNGTEnumValueGenerated,
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTEnumValue class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TEnumValue super: #FmxNGTEnumValueGenerated>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTEnumValue >> belongsTo [

	^ self parentEnum
]

{ #category : #accessing }
FmxNGTEnumValue >> mooseNameOn: aStream [
	(self belongsTo isNotNil and: [ self belongsTo name isNotNil ])
		ifTrue: [ self belongsTo mooseNameOn: aStream.
			aStream << self mooseNameSeparator ].
	super mooseNameOn: aStream
]

{ #category : #accessing }
FmxNGTEnumValue >> mooseNameSeparator [
	^ '::'
]

{ #category : #accessing }
FmxNGTEnumValue >> parentType [ 

	^ self parentEnum
]
