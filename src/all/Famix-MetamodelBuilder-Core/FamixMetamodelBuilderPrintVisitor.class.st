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
FamixMetamodelBuilderPrintVisitor >> visitClass: aClass [

	Transcript tab; nextPutAll: aClass name; cr.
	Transcript tab; nextPutAll: ' -|> '.
	aClass classGeneralization ifNotNil: [ :generalization |
		Transcript nextPutAll: generalization name].
	aClass traitGeneralizations ifNotEmpty: [ :generalizations |
		generalizations do: [ :generalization |
			Transcript nextPutAll: ', '; nextPutAll: generalization name ]].
	Transcript cr.

	aClass properties do: [ :each | each acceptVisitor: self ].

]

{ #category : #visiting }
FamixMetamodelBuilderPrintVisitor >> visitRelationSide: aRelationSide [

	Transcript tab.
	Transcript tab.
	aRelationSide name logCr.
]

{ #category : #visiting }
FamixMetamodelBuilderPrintVisitor >> visitTrait: aTrait [

	Transcript tab; nextPutAll: aTrait name; cr.

	aTrait properties do: [ :each | each acceptVisitor: self ].

]

{ #category : #visiting }
FamixMetamodelBuilderPrintVisitor >> visitTypedProperty: aTypedProperty [

	Transcript tab.
	Transcript tab.
	aTypedProperty logCr.
]
