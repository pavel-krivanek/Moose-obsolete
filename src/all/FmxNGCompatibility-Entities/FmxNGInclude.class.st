Class {
	#name : #FmxNGInclude,
	#superclass : #FmxNGIncludeGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGInclude class >> annotation [

	<MSEClass: #Include super: #FmxNGIncludeGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #'instance creation' }
FmxNGInclude >> from [	
	^ self source
]

{ #category : #'instance creation' }
FmxNGInclude >> to [
	^ self target
]
