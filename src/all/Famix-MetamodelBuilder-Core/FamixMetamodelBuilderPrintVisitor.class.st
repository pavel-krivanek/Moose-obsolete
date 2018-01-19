Class {
	#name : #FamixMetamodelBuilderPrintVisitor,
	#superclass : #FamixMetamodelBuilderVisitor,
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #visiting }
FamixMetamodelBuilderPrintVisitor >> visitBuilder: aBuilder [

	aBuilder logCr.
	aBuilder sortedTraits do: [ :each | each acceptVisitor: self ].
	aBuilder sortedClasses do: [ :each | each acceptVisitor: self ].	
]

{ #category : #visiting }
FamixMetamodelBuilderPrintVisitor >> visitClass: aClas [

	Transcript tab.
	aClas logCr.
	
	aClas properties do: [ :each | each acceptVisitor: self ].

]

{ #category : #visiting }
FamixMetamodelBuilderPrintVisitor >> visitRelationSide: aRelationSide [

	Transcript tab.
	Transcript tab.
	aRelationSide logCr.
]

{ #category : #visiting }
FamixMetamodelBuilderPrintVisitor >> visitTrait: aTrait [

	Transcript tab.
	aTrait logCr.
	
	aTrait properties do: [ :each | each acceptVisitor: self ].

]

{ #category : #visiting }
FamixMetamodelBuilderPrintVisitor >> visitTypedProperty: aTypedProperty [

	Transcript tab.
	Transcript tab.
	aTypedProperty logCr.
]
