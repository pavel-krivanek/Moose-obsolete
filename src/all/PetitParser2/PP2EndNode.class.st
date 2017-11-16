Class {
	#name : #PP2EndNode,
	#superclass : #PP2DelegateNode,
	#category : 'PetitParser2-Nodes'
}

{ #category : #visiting }
PP2EndNode >> accept: aPP2Visitor [
	^ aPP2Visitor visitEnd: self
]

{ #category : #operators }
PP2EndNode >> end [
	^ self
]

{ #category : #initialization }
PP2EndNode >> resetStrategy [
	strategy := PP2End on: self
]
