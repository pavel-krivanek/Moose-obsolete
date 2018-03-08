Class {
	#name : #FmxNGCUSTOMSourceLanguageGenerated,
	#superclass : #FmxNGSourceLanguage,
	#instVars : [
		'isStub',
		'name'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGCUSTOMSourceLanguageGenerated class >> annotation [

	<MSEClass: #CUSTOMSourceLanguageGenerated super: #FmxNGSourceLanguage>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGCUSTOMSourceLanguageGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGCUSTOMSourceLanguageGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTNamed}
]

{ #category : #'_fromTrait_FmxNGTNamedGenerated' }
FmxNGCUSTOMSourceLanguageGenerated >> isStub [

	<MSEProperty: #isStub type: #Boolean>
	<MSEComment: 'Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.'>
	^ isStub
]

{ #category : #'_fromTrait_FmxNGTNamedGenerated' }
FmxNGCUSTOMSourceLanguageGenerated >> isStub: anObject [

	isStub := anObject

]

{ #category : #'_fromTrait_FmxNGTNamedGenerated' }
FmxNGCUSTOMSourceLanguageGenerated >> name [

	<MSEProperty: #name type: #String>
	<MSEComment: 'Basic name of the entity, not full reference.'>
	^ name
]

{ #category : #'_fromTrait_FmxNGTNamedGenerated' }
FmxNGCUSTOMSourceLanguageGenerated >> name: anObject [

	name := anObject

]
