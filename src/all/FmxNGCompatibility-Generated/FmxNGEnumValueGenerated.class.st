Class {
	#name : #FmxNGEnumValueGenerated,
	#superclass : #FmxNGStructuralEntity,
	#instVars : [
		'#parentEnum => FMOne type: #FmxNGTWithEnumValues opposite: #enumValues'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGEnumValueGenerated class >> annotation [

	<MSEClass: #EnumValueGenerated super: #FmxNGStructuralEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGEnumValueGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGEnumValueGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTEnumValue}
]

{ #category : #'_fromTrait_FmxNGTEnumValue' }
FmxNGEnumValueGenerated >> belongsTo [

	^ self parentEnum
]

{ #category : #'_fromTrait_FmxNGTEnumValue' }
FmxNGEnumValueGenerated >> mooseNameOn: aStream [
	(self belongsTo isNotNil and: [ self belongsTo name isNotNil ])
		ifTrue: [ self belongsTo mooseNameOn: aStream.
			aStream << self mooseNameSeparator ].
	super mooseNameOn: aStream
]

{ #category : #'_fromTrait_FmxNGTEnumValue' }
FmxNGEnumValueGenerated >> mooseNameSeparator [
	^ '::'
]

{ #category : #'_fromTrait_FmxNGTEnumValueGenerated' }
FmxNGEnumValueGenerated >> parentEnum [

	<MSEComment: 'The Enum declaring this value. It offers the implementation of belongsTo'>
	<container>

	^ parentEnum
]

{ #category : #'_fromTrait_FmxNGTEnumValueGenerated' }
FmxNGEnumValueGenerated >> parentEnum: anObject [

	parentEnum := anObject

]

{ #category : #'_fromTrait_FmxNGTEnumValue' }
FmxNGEnumValueGenerated >> parentType [ 

	^ self parentEnum
]
