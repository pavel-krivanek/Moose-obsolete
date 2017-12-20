Class {
	#name : #FamixMetamodelBuilderRelationTest,
	#superclass : #TestCase,
	#instVars : [
		'builder'
	],
	#category : #'Famix-MetamodelBuilder-Tests'
}

{ #category : #initialization }
FamixMetamodelBuilderRelationTest >> setUp [

	builder := FamixMetamodelBuilder forTesting.

]

{ #category : #initialization }
FamixMetamodelBuilderRelationTest >> testOneToOneTraitsRelation [

	| tClass tComment generatedTClass generatedTComment |
		
	tClass := builder newTraitNamed: #TClass. 
	tComment := builder newTraitNamed: #TComment. 

	(tClass property: #comment) - (tComment property: #owner).
	
	builder generate.
	
	generatedTClass := builder testingEnvironment ask classNamed: 'TstTClass'.
	generatedTComment := builder testingEnvironment ask classNamed: 'TstTComment'.
	
	self assert: generatedTClass slots size equals: 1.
	self assert: generatedTClass slots first name equals: #comment.
	self assert: generatedTClass slots first expression equals: 'FMOne type: #TstTComment opposite: #owner'.

	self assertCollection: generatedTClass instanceSide selectors hasSameElements: #(comment comment:).

	self assert: generatedTComment slots size equals: 1.
	self assert: generatedTComment slots first name equals: #owner.
	self assert: generatedTComment slots first expression equals: 'FMOne type: #TstTClass opposite: #comment'.

	self assertCollection: generatedTComment instanceSide selectors hasSameElements: #(owner owner:).

]
