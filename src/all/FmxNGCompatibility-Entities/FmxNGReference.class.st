Class {
	#name : #FmxNGReference,
	#superclass : #FmxNGReferenceGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGReference class >> annotation [

	<MSEClass: #Reference super: #FmxNGReferenceGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #'instance creation' }
FmxNGReference >> from [
	^ self source. 
]

{ #category : #'instance creation' }
FmxNGReference >> from: aSource [
	self source: aSource . 
]

{ #category : #'instance creation' }
FmxNGReference >> to [
	^ self target
]

{ #category : #'instance creation' }
FmxNGReference >> to: aTarget [
	self target: aTarget
]
