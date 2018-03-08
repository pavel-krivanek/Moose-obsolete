Class {
	#name : #FmxNGLeafEntity,
	#superclass : #FmxNGLeafEntityGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGLeafEntity class >> annotation [

	<MSEClass: #LeafEntity super: #FmxNGLeafEntityGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #visiting }
FmxNGLeafEntity >> accept: aVisitor [

	aVisitor visitLeafEntity: self
]
