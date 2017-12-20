Class {
	#name : #FamixMetamodelBuilderIncompletePropertyDefiniton,
	#superclass : #Error,
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #accessing }
FamixMetamodelBuilderIncompletePropertyDefiniton >> messageText [

	^ 'Properties need to be part of a relations or have a primitive type'
]
