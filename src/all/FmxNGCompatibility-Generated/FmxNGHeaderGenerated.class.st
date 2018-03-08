Class {
	#name : #FmxNGHeaderGenerated,
	#superclass : #FmxNGCFile,
	#instVars : [
		'#headerOwner => FMOne type: #FmxNGTWithHeader opposite: #header'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGHeaderGenerated class >> annotation [

	<MSEClass: #HeaderGenerated super: #FmxNGCFile>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGHeaderGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGHeaderGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTHeader}
]
