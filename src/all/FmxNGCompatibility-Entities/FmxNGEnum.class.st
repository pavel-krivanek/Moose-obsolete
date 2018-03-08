Class {
	#name : #FmxNGEnum,
	#superclass : #FmxNGEnumGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGEnum class >> annotation [

	<MSEClass: #Enum super: #FmxNGEnumGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #accessing }
FmxNGEnum >> values [
	^ self enumValues
]

{ #category : #accessing }
FmxNGEnum >> values: anObject [
	self enumValues: anObject
]
