Class {
	#name : #FmxNGTAccess,
	#superclass : #FmxNGTAccessGenerated,
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTAccess class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TAccess super: #FmxNGTAccessGenerated>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTAccess >> isWrite [

	^ super isWrite ifNil: [ false ]
]
