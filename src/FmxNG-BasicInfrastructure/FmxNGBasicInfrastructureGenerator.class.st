Class {
	#name : #FmxNGBasicInfrastructureGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'entity',
		'sourceAnchor',
		'sourceLanguage',
		'sourcedEntity',
		'association',
		'comment',
		'namedEntity',
		'sourceTextAnchor'
	],
	#category : #'FmxNG-BasicInfrastructure'
}

{ #category : #definition }
FmxNGBasicInfrastructureGenerator >> defineClasses [

	super defineClasses.

	entity := builder newClassNamed: #Entity.
	sourceAnchor := builder newClassNamed: #SourceAnchor.
	sourceLanguage := builder newClassNamed: #SourceLanguage.
	sourcedEntity := builder newClassNamed: #SourcedEntity.
	association := builder newClassNamed: #Association.
	comment := builder newClassNamed: #Comment.
	namedEntity := builder newClassNamed: #NamedEntity.
	sourceTextAnchor := builder newClassNamed: #SourceTextAnchor.

]

{ #category : #definition }
FmxNGBasicInfrastructureGenerator >> defineHierarchy [

	sourceAnchor --|> entity.
	sourceAnchor --|> #TSourceAnchor.
	
	sourceAnchor --|> #TEntityMetaLevelDependency.
	sourceAnchor --|> #TDependencyQueries.

	sourceLanguage --|> entity.
	sourceLanguage --|> #TSourceLanguage.
	
	sourcedEntity --|> entity.
	sourcedEntity --|> #TWithSourceAnchor.
	sourcedEntity --|> #TWithComments.
	sourcedEntity --|> #TWithSourceLanguage.
	
	association --|> sourcedEntity.
	association --|> #TAssociation.
	
	association --|> #TAssociationMetaLevelDependency.
	
	comment --|> sourcedEntity.
	comment --|> #TComment.

	namedEntity --|> sourcedEntity.
	namedEntity --|> #TNamed.

	namedEntity --|> #TDependencyQueries.
	namedEntity --|> #TEntityMetaLevelDependency.
	
	sourceTextAnchor --|> sourceAnchor.
	sourceTextAnchor --|> #TWithImmediateSource.


]

{ #category : #definition }
FmxNGBasicInfrastructureGenerator >> newBuilder [

	^ self builderWithStandardTraits
]
