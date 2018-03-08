Class {
	#name : #FmxNGEntityGenerated,
	#superclass : #MooseEntity,
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGEntityGenerated class >> annotation [

	<MSEClass: #EntityGenerated super: #MooseEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGEntityGenerated class >> metamodel [

	^ FmxNGCompatibilityGenerator metamodel
]

{ #category : #meta }
FmxNGEntityGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGEntityGenerated class >> statefulTraits [

	<statefulTraits>
	^ {}
]
