Class {
	#name : #FmxNGTMethod,
	#superclass : #FmxNGTMethodGenerated,
	#category : #'FmxNG-Traits'
}

{ #category : #testing }
FmxNGTMethod >> parentTypeIsStub [
	^ self parentType ifNotNil: [ :e | e isStub ] ifNil: [ true ]
]
