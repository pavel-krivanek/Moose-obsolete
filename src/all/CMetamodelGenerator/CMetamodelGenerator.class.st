"
generate the general traits:

| g |
g := FmxNGGenerator new.
g builder traitsFlattening: false.
g generateWithoutCleaning.

generate the mini Smalltalk metamodel

| g |
g := CMetamodelGenerator  new.
g builder traitsFlattening: true.
g generateWithoutCleaning.
MiniSmalltalkGenerator resetMetamodel.


generate PlantText graphs

| b v |
b := CMetamodelGenerator builderWithDefinitions.
v := FamixMetamodelBuilderPlantTextVisitor new.
b acceptVisitor: v.
v contents
"
Class {
	#name : #CMetamodelGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'function',
		'entity',
		'type',
		'macro',
		'module',
		'file',
		'cFile',
		'hFile',
		'tEntity',
		'tFunction',
		'tType',
		'tMacro',
		'tModule',
		'tFile',
		'tCFile',
		'tHFile',
		'invocation',
		'tInvocation'
	],
	#category : #CMetamodelGenerator
}

{ #category : #accessing }
CMetamodelGenerator class >> packageName [

	^ #FmxC
]

{ #category : #definition }
CMetamodelGenerator >> defineClasses [

	entity := builder newClassNamed: #Entity.
	function := builder newClassNamed: #Function.
	type := builder newClassNamed: #Type.
	macro := builder newClassNamed: #Macro.
	module := builder newClassNamed: #Module.
	file := builder newClassNamed: #File.
	cFile := builder newClassNamed: #CFile.
	hFile := builder newClassNamed: #HFile.
	
	invocation := builder newClassNamed: #Invocation.
	
	tEntity := (entity as: #TEntity) trait.
	tFunction := (function as: #TFunction) trait.
	tType := (type as: #TType) trait.
	tMacro := (macro as: #TMacro) trait.
	tModule := (module as: #TModule) trait.
	tFile := (file as: #TFile) trait.
	tCFile := (cFile as: #TCFile) trait.
	tHFile := (hFile as: #THFile) trait.
	tInvocation := (invocation as: #TInvocation) trait.
	
	self defineHierarchy.
]

{ #category : #definition }
CMetamodelGenerator >> defineHierarchy [

	entity <|-- function.
	entity <|-- type.
	entity <|-- macro.
	entity --|> #TNamed.

	module --|> #TNamed.
	file --|> #TNamed.

	file <|-- cFile.
	file <|-- hFile.
	
	invocation --|> #TInvocation.
	function --|> #TWithInvocations.
	function --|> #TInvocable.

	"sourceAnchor generalization: entity.
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
	method generalization: #TWithSignature.

	scopingEntity generalization: namedEntity.
	scopingEntity generalization: #TWithTypes. 

	namespace generalization: scopingEntity.

	package generalization: scopingEntity.
	package generalization: #TWithComments. 
	package generalization: #TPackage. 

"
]

{ #category : #'instance creation' }
CMetamodelGenerator >> defineRelations [

	tModule <>- tCFile.
	tModule <>- tHFile.
	
	(tEntity property: #definedIn) *- (tFile property: #definedEntities).

]

{ #category : #'instance creation' }
CMetamodelGenerator >> newBuilder [

	^ (FmxNGGenerator builderWithDefinitions)
		doNotGenerateCurrent;
		generator: self;
		yourself.
	
		
		
	
]
