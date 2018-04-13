Class {
	#name : #FmxNGEnumValue,
	#superclass : #FmxNGEnumValueGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #accessing }
FmxNGEnumValue >> belongsTo [

	^ self parentEnum
]

{ #category : #'Famix-Implementation' }
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
