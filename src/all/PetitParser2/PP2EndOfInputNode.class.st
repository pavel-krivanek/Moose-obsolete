Class {
	#name : #PP2EndOfInputNode,
	#superclass : #PP2Node,
	#category : 'PetitParser2-Nodes'
}

{ #category : #visiting }
PP2EndOfInputNode >> accept: aPP2Visitor [
	^ aPP2Visitor visitEndOfInput: self
]

{ #category : #accessing }
PP2EndOfInputNode >> firstCharSet [
	^ PP2CharSetPredicate empty
]

{ #category : #testing }
PP2EndOfInputNode >> isEOI [
	^ true	
]

{ #category : #initialization }
PP2EndOfInputNode >> resetStrategy [
	strategy := PP2EndOfInput on: self
]
