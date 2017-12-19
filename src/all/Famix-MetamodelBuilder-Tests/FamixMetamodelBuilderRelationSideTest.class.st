Class {
	#name : #FamixMetamodelBuilderRelationSideTest,
	#superclass : #TestCase,
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

	self deny: side isDerived.
	side derived.
	self assert: side isDerived.
	side derived: false.
	self deny: side isDerived.

	self deny: side isSource.
	side source.
	self assert: side isSource.
	side source: false.
	self deny: side isSource.

		
]
