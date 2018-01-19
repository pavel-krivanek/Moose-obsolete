"
b := FmxNGTestCompatibilityGenerator builderWithDefinitions.
v := FamixMetamodelBuilderPlantTextVisitor new.
b acceptVisitor: v.
v contents

"
Class {
	#name : #FamixMetamodelBuilderPlantTextVisitor,
	#superclass : #FamixMetamodelBuilderVisitor,
	#instVars : [
		'stream'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #visiting }
FamixMetamodelBuilderPlantTextVisitor >> contents [

	^ stream contents
]

{ #category : #initialization }
FamixMetamodelBuilderPlantTextVisitor >> initialize [

	super initialize.
	
	stream := String new writeStream.
]

{ #category : #visiting }
FamixMetamodelBuilderPlantTextVisitor >> visitBuilder: aBuilder [

	stream << '@startuml'; cr; cr.
	aBuilder sortedTraits do: [ :each | each acceptVisitor: self ].
	aBuilder sortedClasses do: [ :each | each acceptVisitor: self ].	
	stream cr; << '@enduml'; cr.
	
]

{ #category : #visiting }
FamixMetamodelBuilderPlantTextVisitor >> visitClass: aClass [

	stream << 'class ' << aClass name << '{'; cr.

	aClass properties do: [ :each | each acceptVisitor: self ].

	stream << '}'; cr; cr.
	
	aClass classGeneralization ifNotNil: [ :generalization |
		stream << generalization name << ' <|-down- ' << aClass name; cr].
	
	aClass traitGeneralizations ifNotEmpty: [ :generalizations |
		generalizations do: [ :generalization |
			stream << generalization name << ' <|-down- ' << aClass name; cr ]].
	Transcript cr.
	
	
]

{ #category : #visiting }
FamixMetamodelBuilderPlantTextVisitor >> visitRelationSide: aRelationSide [

	stream tab; << '- '; << aRelationSide name; cr. 
]

{ #category : #visiting }
FamixMetamodelBuilderPlantTextVisitor >> visitTrait: aTrait [

	stream << 'class ' << aTrait name << '{'; cr.

	aTrait properties do: [ :each | each acceptVisitor: self ].

	stream << '}'; cr; cr.

]

{ #category : #visiting }
FamixMetamodelBuilderPlantTextVisitor >> visitTypedProperty: aTypedProperty [

	stream tab; << '- '; << aTypedProperty propertyType; space; << aTypedProperty name; cr. 
]
