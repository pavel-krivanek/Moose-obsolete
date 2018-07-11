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
		'namedEntity'
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

]

{ #category : #definition }
FmxNGBasicInfrastructureGenerator >> defineHierarchy [

	sourceAnchor --|> entity.
	sourceAnchor --|> #TSourceAnchor.

	sourceLanguage --|> entity.
	sourceLanguage --|> #TSourceLanguage.
	
	sourcedEntity --|> entity.
	sourcedEntity --|> #TWithSourceAnchor.
	sourcedEntity --|> #TWithComments.
	sourcedEntity --|> #TWithSourceLanguage.
	
	association --|> sourcedEntity.
	association --|> #TAssociation.
	
	comment --|> sourcedEntity.
	comment --|> #TComment.

	namedEntity --|> sourcedEntity.
	namedEntity --|> #TNamed.

]

{ #category : #definition }
FmxNGBasicInfrastructureGenerator >> newBuilder [

	^ self builderWithStandardTraits
]
