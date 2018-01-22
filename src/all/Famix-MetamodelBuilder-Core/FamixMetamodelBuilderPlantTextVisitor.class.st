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
		'stream',
		'relations'
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
	relations := IdentitySet new.
]

{ #category : #visiting }
FamixMetamodelBuilderPlantTextVisitor >> visitBuilder: aBuilder [

	stream << '@startuml'; cr; cr.
	aBuilder sortedTraits do: [ :each | each acceptVisitor: self ].
	aBuilder sortedClasses do: [ :each | each acceptVisitor: self ].	
	self writeRelations.	
	stream cr; << '@enduml'; cr.
	
]

{ #category : #visiting }
FamixMetamodelBuilderPlantTextVisitor >> visitClass: aClass [

	aClass willGenerate ifFalse: [ ^ self ].

	stream << 'class ' << aClass name << ' {'; cr.

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

	relations add: aRelationSide relation.

]

{ #category : #visiting }
FamixMetamodelBuilderPlantTextVisitor >> visitTrait: aTrait [

	aTrait willGenerate ifFalse: [ ^ self ].

	stream << 'class ' << aTrait name << ' << (T,orchid) >> {'; cr.

	aTrait properties do: [ :each | each acceptVisitor: self ].

	stream << '}'; cr; cr.

]

{ #category : #visiting }
FamixMetamodelBuilderPlantTextVisitor >> visitTypedProperty: aTypedProperty [

	stream tab; << '- '; << aTypedProperty propertyType; space; << aTypedProperty name; cr. 
]

{ #category : #relations }
FamixMetamodelBuilderPlantTextVisitor >> writeRelations [
	
	relations do: [ :relation | 
		stream << relation from trait name << ' "' << relation from name << '"'.
		
		stream space.
		relation from isContainer ifTrue: [ stream nextPutAll: 'o' ].
		stream nextPutAll: '--'.
		relation to isContainer ifTrue: [ stream nextPutAll: 'o' ].
		stream space.
		
		stream << '"' << relation to name << '" ' << relation to trait name; cr.
		]
	
]
