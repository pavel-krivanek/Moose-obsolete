Class {
	#name : #FamixMetamodelBuilderBehaviorAliasTest,
	#superclass : #FamixMetamodelBuilderTestCase,
	#category : #'Famix-MetamodelBuilder-Tests'
}

{ #category : #initialization }
FamixMetamodelBuilderBehaviorAliasTest >> testAsIncompletePropertyWithoutRelation [

	| named |
		
	named := builder newClassNamed: #Named.
	named as: #TNamed property: #name.
	
	self should: [ builder generate ] raise: FamixMetamodelBuilderIncompletePropertyDefiniton.

]

{ #category : #initialization }
FamixMetamodelBuilderBehaviorAliasTest >> testClassPropertyWithType [

	"test if we can create typed property in a class alias"

	| named alias generated method |
		
	named := builder newClassNamed: #Named.
	alias := named as: #TNamed.
	alias property: #name type: #String.
	
	builder generate.
	
	generated := builder testingEnvironment ask classNamed: 'TstNamed'.
	method := generated instanceSide methodNamed: #name.
	self assert: (method sourceCode includesSubstring: '<MSEProperty: #name type: #String>').
	self assert: (method sourceCode includesSubstring: '<generated>').
	method := generated instanceSide methodNamed: #name:.
	self assert: (method sourceCode includesSubstring: 'name := ').

]

{ #category : #initialization }
FamixMetamodelBuilderBehaviorAliasTest >> testLink [

	| access variable method sides |
	
	access := builder newClassNamed: #Access.	
	variable := builder newClassNamed: #Variable.	
	method := builder newClassNamed: #Method.	
		
	sides := (method as: #TWithAccesses)
		link: #accesses -> #accessor
		throughAssociation: (access as: #TAccess) 
		link: #variable <- #icomingAcesses
		with: (variable as: #TAccessible).
		
	sides first comment: 'This is a comment'.
		
	builder generate.
	
	"TODO: assert"
]

{ #category : #initialization }
FamixMetamodelBuilderBehaviorAliasTest >> testTraitName [

	"trivial test of alias #traitName"

	| named alias |
	named := builder newClassNamed: #Named.
	alias := named as: #TNamed.
	alias property: #name type: #String.
	
	self assert: alias traitName equals: #TNamed
]

{ #category : #initialization }
FamixMetamodelBuilderBehaviorAliasTest >> testTraitPropertyWithType [

	| named generated method |
		
	named := builder newTraitNamed: #TNamed.
	named property: #name type: #String.
	
	builder generate.
	
	generated := builder testingEnvironment ask classNamed: 'TstTNamed'.
	method := generated instanceSide methodNamed: #name.
	self assert: (method sourceCode includesSubstring: '<MSEProperty: #name type: #String>').
	self assert: (method sourceCode includesSubstring: '<generated>').
	method := generated instanceSide methodNamed: #name:.
	self assert: (method sourceCode includesSubstring: 'name := ').

]

{ #category : #initialization }
FamixMetamodelBuilderBehaviorAliasTest >> testUseTraitInsteadOfTraitName [

	"test usage of a trait instead of a trait name in the alias creation"

	| named tNamed alias |
	named := builder newClassNamed: #Named.
	tNamed := builder newTraitNamed: #TNamed.
	alias := named as: tNamed.
	
	self assert: alias traitName equals: #TNamed.
	self assert: alias trait equals: tNamed
]
