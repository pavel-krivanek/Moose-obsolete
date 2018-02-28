Class {
	#name : #'PP2AdaptableGrammarTest_Optimized',
	#superclass : #PP2CompositeNodeTest,
	#traits : 'TPP2AdaptableGrammarTest',
	#classTraits : 'TPP2AdaptableGrammarTest classTrait',
	#category : 'PetitParser2-Tests-Examples'
}

{ #category : #accessing }
PP2AdaptableGrammarTest_Optimized >> parserInstance [
	^ super parserInstance optimize
]
