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
