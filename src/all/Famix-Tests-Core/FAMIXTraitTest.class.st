Class {
	#name : #FAMIXTraitTest,
	#superclass : #FAMIXTypeTest,
	#category : #'Famix-Tests-Core'
}

{ #category : #helpers }
FAMIXTraitTest >> actualClass [
	^ FmxNGTrait
]

{ #category : #tests }
FAMIXTraitTest >> testBackReferences [
	| trait user traitUsage |
	trait := FmxNGTrait new.
	user := FmxNGClass new.
	traitUsage := FmxNGTraitUsage new user: user; trait: trait.
	self assert: user outgoingTraitUsages size equals: 1.
	self assert: trait incomingTraitUsages size equals: 1.
]
