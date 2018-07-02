Class {
	#name : #FamixMetamodelBuilderRelationSideTest,
	#superclass : #FamixMetamodelBuilderTestCase,
	#category : #'Famix-MetamodelBuilder-Tests'
}

{ #category : #tests }
FamixMetamodelBuilderRelationSideTest >> testBasics [

	| side |
	
	side := FamixMetamodelBuilderRelationSide new.
	
	self assert: side cardinality equals: #one.
	self deny: side isContainer.
	self deny: side isDerived.
	self deny: side isTarget.
	self deny: side isSource.
	self assert: side willGenerate.
	self assert: side comment isEmpty.
	
	
]

{ #category : #tests }
FamixMetamodelBuilderRelationSideTest >> testProperties [

	| side |
	
	side := FamixMetamodelBuilderRelationSide new.

	self deny: side isContainer.
	side container.
	self assert: side isContainer.
	side container: false.
	self deny: side isContainer.
	side container.
	self assert: side isContainer.
	side noContainer.
	self deny: side isContainer.

	self deny: side isDerived.
	side derived.
	self assert: side isDerived.
	side derived: false.
	self deny: side isDerived.
	side derived.
	self assert: side isDerived.
	side notDerived.
	self deny: side isDerived.

	self deny: side isSource.
	side source.
	self assert: side isSource.
	side source: false.
	self deny: side isSource.

	self deny: side isTarget.
	side target.
	self assert: side isTarget.
	side target: false.
	self deny: side isTarget.

	self deny: side isTarget.
	side target.
	self assert: side isTarget.
	side target: false.
	self deny: side isTarget.

		
]

{ #category : #tests }
FamixMetamodelBuilderRelationSideTest >> testReconnection [

	"test if after changing of related trait of a relation side all will be consistent"

	| tClass tComment generatedTClass generatedTComment tAccess side |
		
	tClass := builder newTraitNamed: #TClass. 
	tComment := builder newTraitNamed: #TComment. 
	tAccess := builder newTraitNamed: #TAccess. 

	(side := (tClass property: #property1)) - (tComment property: #property2).
	
	self assert: side trait equals: tClass.
	self assertCollection: tClass sides asArray equals: { side }.
	self assert: tAccess sides isEmpty.

	side trait: tAccess.

	self assert: side trait equals: tAccess.
	self assert: tClass sides isEmpty.
	self assertCollection: tAccess sides asArray equals: { side }.

	
]
