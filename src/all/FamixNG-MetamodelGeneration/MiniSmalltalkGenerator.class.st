"
generate the general traits:

| g |
g := FmxNGGenerator new.
g builder traitsFlattening: false.
g generate.

generate the mini Smalltalk metamodel

| g |
g := MiniSmalltalkGenerator new.
g builder traitsFlattening: true.
g generate.
MiniSmalltalkGenerator resetMetamodel.


generate PlantText graphs

| b v |
b := MiniSmalltalkGenerator builderWithDefinitions.
v := FamixMetamodelBuilderPlantTextVisitor new.
b acceptVisitor: v.
v contents
"
Class {
	#name : #MiniSmalltalkGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'entity',
		'sourceAnchor',
		'sourceLanguage',
		'sourcedEntity',
		'annotationInstance',
		'annotationInstanceAttribute',
		'association',
		'access',
		'inheritance',
		'invocation',
		'reference',
		'comment',
		'namedEntity',
		'behavior',
		'class',
		'trait',
		'method',
		'scopingEntity',
		'namespace',
		'package',
		'variable',
		'attribute',
		'globalVariable',
		'implicitVariable',
		'localVariable',
		'parameter',
		'unknownVariable'
	],
	#category : #'FamixNG-MetamodelGeneration'
}

{ #category : #accessing }
MiniSmalltalkGenerator class >> packageName [

	^ #MiniSt
]

{ #category : #accessing }
MiniSmalltalkGenerator class >> resetMetamodel [

	" self resetMetamodel"

	| classes tower |
	
	classes := self packageName asPackage definedClasses.
	classes addAll: #'FmxNG-Generated' asPackage definedClasses.
	classes addAll: #'FmxNG-Traits' asPackage definedClasses.
	
	{ FmxTraitEntity. MooseModel. MooseAbstractGroup. MooseEntity. MooseGroup.} 
		do: [ :each | classes add: each ].

	tower := MooseModel metaBuilder: classes.
	self metamodel: tower metamodel.
	^ metamodel

	
]

{ #category : #'instance creation' }
MiniSmalltalkGenerator >> defineClasses [

	entity := builder newClassNamed: #Entity.

	sourceAnchor := builder newClassNamed: #SourceAnchor.
	comment := builder newClassNamed: #Comment.
	sourceLanguage := builder newClassNamed: #SourceLanguage.
	sourcedEntity := builder newClassNamed: #SourcedEntity.
	association := builder newClassNamed: #Association.
	inheritance := builder newClassNamed: #Inheritance.
	namedEntity := builder newClassNamed: #NamedEntity.
	behavior := builder newClassNamed: #Behavior.
	class := builder newClassNamed: #Class.
	method := builder newClassNamed: #Method.
	scopingEntity := builder newClassNamed: #ScopingEntity.
	namespace := builder newClassNamed: #Namespace.
	package := builder newClassNamed: #Package.
	
	self defineHierarchy.
]

{ #category : #'instance creation' }
MiniSmalltalkGenerator >> defineHierarchy [


	sourceAnchor generalization: entity.
	sourceAnchor generalization: #TSourceAnchor.

	sourceLanguage generalization: entity.
	sourceLanguage generalization: #TSourceLanguage.

	sourcedEntity generalization: entity.
	sourcedEntity generalization: #TWithSourceLanguage. 
	sourcedEntity generalization: #TWithSourceAnchor. 
	
	association generalization: sourcedEntity.

	inheritance generalization: association.
	inheritance generalization: #TSuperInheritance. 
	inheritance generalization: #TSubInheritance. 

	comment generalization: sourcedEntity.
	comment generalization: #TComment. 

	namedEntity generalization: sourcedEntity.
	namedEntity generalization: #TNamed. 
	namedEntity generalization: #TInvocationsReceiver. 

	behavior generalization: namedEntity.
	behavior generalization: #TWithMethods. 
	behavior generalization: #TWithComments. 
	behavior generalization: #TPackageable.

	class generalization: behavior.
	class generalization: #TType. 
	class generalization: #TWithSubInheritances. 
	class generalization: #TWithSuperInheritances. 

	method generalization: namedEntity.
	method generalization: #TMethod. 
	method generalization: #TWithComments.
	method generalization: #TPackageable.

	scopingEntity generalization: namedEntity.
	scopingEntity generalization: #TWithTypes. 

	namespace generalization: scopingEntity.

	package generalization: scopingEntity.
	package generalization: #TWithComments. 
	package generalization: #TPackage. 


]

{ #category : #'instance creation' }
MiniSmalltalkGenerator >> newBuilder [

	^ (FmxNGGenerator builderWithDefinitions)
		doNotGenerateCurrent;
		generator: self;
		yourself.
	
		
		
	
]

{ #category : #'instance creation' }
MiniSmalltalkGenerator >> packageName [

	^ self class packageName
]
