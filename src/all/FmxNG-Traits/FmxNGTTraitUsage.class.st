Class {
	#name : #FmxNGTTraitUsage,
	#superclass : #FmxNGTTraitUsageGenerated,
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTTraitUsage class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TTraitUsage super: #FmxNGTTraitUsageGenerated>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #'instance creation' }
FmxNGTTraitUsage >> from [
	^ self user
]

{ #category : #'instance creation' }
FmxNGTTraitUsage >> from: anObject [
	self user: anObject
]

{ #category : #'instance creation' }
FmxNGTTraitUsage >> to [
	^ self trait
]

{ #category : #'instance creation' }
FmxNGTTraitUsage >> to: anObject [
	self trait: anObject
]
