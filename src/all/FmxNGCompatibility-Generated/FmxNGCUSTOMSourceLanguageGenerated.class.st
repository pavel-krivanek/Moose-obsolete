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
