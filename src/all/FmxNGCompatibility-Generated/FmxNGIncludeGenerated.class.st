Class {
	#name : #FmxNGIncludeGenerated,
	#superclass : #FmxNGAssociation,
	#instVars : [
		'#target => FMOne type: #FmxNGTWithFileInclude opposite: #incomingIncludeRelations',
		'#source => FMOne type: #FmxNGTWithFileInclude opposite: #outgoingIncludeRelations'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGIncludeGenerated class >> annotation [

	<MSEClass: #IncludeGenerated super: #FmxNGAssociation>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGIncludeGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGIncludeGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTFileInclude}
]
