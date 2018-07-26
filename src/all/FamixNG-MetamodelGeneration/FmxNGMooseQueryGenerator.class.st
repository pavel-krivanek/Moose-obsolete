Class {
	#name : #FmxNGMooseQueryGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'tAssociationMetaLevelDependency',
		'tDependencyQueries',
		'tDependencyQueryResult',
		'tEntityMetaLevelDependency',
		'tOODependencyQueries'
	],
	#category : #'FamixNG-MetamodelGeneration'
}

{ #category : #accessing }
FmxNGMooseQueryGenerator class >> packageName [

	^ #'Moose-Query'
]

{ #category : #definition }
FmxNGMooseQueryGenerator >> defineTraits [

	tAssociationMetaLevelDependency := builder newTraitNamed: #TAssociationMetaLevelDependency.
	tDependencyQueries := builder newTraitNamed: #TDependencyQueries.
	tDependencyQueryResult := builder newTraitNamed: #TDependencyQueryResult.
	tEntityMetaLevelDependency := builder newTraitNamed: #TEntityMetaLevelDependency.
	tOODependencyQueries := builder newTraitNamed: #TOODependencyQueries.

]

{ #category : #definition }
FmxNGMooseQueryGenerator >> prefix [

	^ ''
]
