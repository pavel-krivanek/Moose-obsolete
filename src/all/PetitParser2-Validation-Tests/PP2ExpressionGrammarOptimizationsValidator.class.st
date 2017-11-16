Class {
	#name : #PP2ExpressionGrammarOptimizationsValidator,
	#superclass : #TestCase,
	#instVars : [
		'validator'
	],
	#category : 'PetitParser2-Validation-Tests-Tests'
}

{ #category : #'as yet unclassified' }
PP2ExpressionGrammarOptimizationsValidator >> setUp [
	super setUp.
	validator := PP2ExpressionGrammarOptimizaitonsValidator new.

]

{ #category : #'as yet unclassified' }
PP2ExpressionGrammarOptimizationsValidator >> testActualForSource [
	| result |
	result := validator actualForSource: '1+2'.
	
	self assert: result size = 3.
	self assert: result first = '1'.
	self assert: result second = $+.
	self assert: result third = '2'.
]

{ #category : #'as yet unclassified' }
PP2ExpressionGrammarOptimizationsValidator >> testExpectedForSource [
	| result |
	result := validator expectedForSource: '1+2'.
	
	self assert: result size = 3.
	self assert: result first = '1'.
	self assert: result second = $+.
	self assert: result third = '2'.
]

{ #category : #'as yet unclassified' }
PP2ExpressionGrammarOptimizationsValidator >> testOptimization [
	self assert: validator optimizedParser isOptimized
]
