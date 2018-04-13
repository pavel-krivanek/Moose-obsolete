Class {
	#name : #FmxNGLeafEntity,
	#superclass : #FmxNGLeafEntityGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #visiting }
FmxNGLeafEntity >> accept: aVisitor [

	aVisitor visitLeafEntity: self
]
