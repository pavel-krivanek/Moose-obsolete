Class {
	#name : #FamixMetamodelBuilderTraitsGeneralizationError,
	#superclass : #Error,
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #accessing }
FamixMetamodelBuilderTraitsGeneralizationError >> messageText [

	^ 'Traits cannot inherit from other entities'
]
