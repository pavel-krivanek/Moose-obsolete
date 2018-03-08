Class {
	#name : #FmxNGEnumGenerated,
	#superclass : #FmxNGType,
	#instVars : [
		'#enumValues => FMMany type: #FmxNGTEnumValue opposite: #parentEnum'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGEnumGenerated class >> annotation [

	<MSEClass: #EnumGenerated super: #FmxNGType>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGEnumGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGEnumGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTWithEnumValues}
]

{ #category : #'_fromTrait_FmxNGTWithEnumValuesGenerated' }
FmxNGEnumGenerated >> enumValues [

	^ enumValues
]

{ #category : #'_fromTrait_FmxNGTWithEnumValuesGenerated' }
FmxNGEnumGenerated >> enumValues: anObject [

	enumValues value: anObject

]
