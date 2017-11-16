Class {
	#name : #PP2FragmentNode,
	#superclass : #PP2DelegateNode,
	#category : 'PetitParser2-Nodes'
}

{ #category : #visiting }
PP2FragmentNode >> accept: aPP2Visitor [
	^ aPP2Visitor visitFragment: self
]

{ #category : #initialization }
PP2FragmentNode >> resetStrategy [
	strategy := PP2Fragment on: self
]
