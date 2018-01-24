Class {
	#name : #FmxNGTestSmalltalkGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
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

{ #category : #'instance creation' }
FmxNGTestSmalltalkGenerator >> defineClasses [

	sourceAnchor := builder newClassNamed: #SourceAnchor.
	sourceLanguage := builder newClassNamed: #SourceLanguage.
	sourcedEntity := builder newClassNamed: #SourceEntity.
	annotationInstance := builder newClassNamed: #AnnotationInstance.
	annotationInstanceAttribute := builder newClassNamed: #AnnotationInstanceAttribute.
	association := builder newClassNamed: #Association.
	access := builder newClassNamed: #Access.
	inheritance := builder newClassNamed: #Inheritance.
	invocation := builder newClassNamed: #Invocation.
	reference := builder newClassNamed: #Reference.
	comment := builder newClassNamed: #Comment.
	namedEntity := builder newClassNamed: #NamedEntity.
	behavior := builder newClassNamed: #Behavior.
	class := builder newClassNamed: #Class.
	trait := builder newClassNamed: #Trait.
	method := builder newClassNamed: #Method.
	scopingEntity := builder newClassNamed: #ScopingEntity.
	namespace := builder newClassNamed: #Namespace.
	package := builder newClassNamed: #Package.
	variable := builder newClassNamed: #Variable.
	attribute := builder newClassNamed: #Attribute.
	globalVariable := builder newClassNamed: #GlobalVariable.
	implicitVariable := builder newClassNamed: #ImplicitVariable.
	localVariable := builder newClassNamed: #LocalVariable.
	parameter := builder newClassNamed: #Parameter.
	unknownVariable := builder newClassNamed: #UnknownVariable.
	
	self defineHierarchy.
]

{ #category : #'instance creation' }
FmxNGTestSmalltalkGenerator >> defineHierarchy [

	sourceAnchor generalization: #TSourceAnchor.

	sourceLanguage generalization: #TSourceLanguage.

	sourcedEntity generalization: #TWithSourceLanguage. 
	sourcedEntity generalization: #TWithSourceAnchor. 
	
	annotationInstance generalization: sourcedEntity.
	annotationInstance generalization: #TAnnotationInstance. 
	annotationInstance generalization: #TWithAnnotationInstanceAttributes. 

	annotationInstanceAttribute generalization: sourcedEntity.
	annotationInstanceAttribute generalization: #TAnnotationInstanceAttribute. 

	association generalization: sourcedEntity.

	access generalization: association.
	access generalization: #TAccess. 

	inheritance generalization: association.
	inheritance generalization: #TSuperInheritance. 
	inheritance generalization: #TSubInheritance. 

	invocation generalization: association.
	invocation generalization: #TInvocation. 
	invocation generalization: #TWithSignature. 

	comment generalization: sourcedEntity.
	comment generalization: #TComment. 

	namedEntity generalization: sourcedEntity.
	namedEntity generalization: #TInvocationsReceiver. 

	behavior generalization: namedEntity.
	behavior generalization: #TWithMethods. 
	behavior generalization: #TWithComments. 
	behavior generalization: #TReferenceable. 
	behavior generalization: #TPackageable . 

	class generalization: behavior.
	class generalization: #TWithSubInheritances. 
	class generalization: #TWithSuperInheritances. 
	class generalization: #TWithTrait. 
	class generalization: #TWithAttributes . 
	class generalization: #TWithTypedStructures . 

]

{ #category : #'instance creation' }
FmxNGTestSmalltalkGenerator >> newBuilder [

	^ (FmxNGTestGenerator builderWithDefinitions)
		"doNotGenerateCurrent;"
		yourself
		
		
	
]
