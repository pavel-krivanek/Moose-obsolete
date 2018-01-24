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
	sourcedEntity := builder newClassNamed: #SourcedEntity.
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

	reference generalization: association.
	reference generalization: #TReference. 
	
	comment generalization: sourcedEntity.
	comment generalization: #TComment. 

	namedEntity generalization: sourcedEntity.
	namedEntity generalization: #TInvocationsReceiver. 

	behavior generalization: namedEntity.
	behavior generalization: #TNamed. 
	behavior generalization: #TWithMethods. 
	behavior generalization: #TWithComments. 
	behavior generalization: #TReferenceable. 
	behavior generalization: #TPackageable.

	class generalization: behavior.
	class generalization: #TWithSubInheritances. 
	class generalization: #TWithSuperInheritances. 
	class generalization: #TWithTrait. 
	class generalization: #TWithAttributes.
	class generalization: #TWithTypedStructures.

	trait generalization: behavior.
	trait generalization: #TTrait.

	method generalization: namedEntity.
	method generalization: #TMethod. 
	method generalization: #TWithInvocations.
	method generalization: #TInvocable.
	method generalization: #TWithComments.
	method generalization: #TWithReferences.
	method generalization: #TWithAccesses.
	method generalization: #TWithAnnotationInstances.
	method generalization: #TPackageable.
	method generalization: #TWithLocalVariables.
	method generalization: #TWithParameters.
	method generalization: #TWithImplicitVariables. 

	scopingEntity generalization: namedEntity.
	scopingEntity generalization: #TGlobalVariableScope. 

	namespace generalization: scopingEntity.

	package generalization: scopingEntity.
	package generalization: #TWithComments. 
	package generalization: #TPackage. 

	variable generalization: namedEntity.
	variable generalization: #TAccessible. 

	attribute generalization: variable.
	attribute generalization: #TAttribute. 

	globalVariable generalization: variable.
	globalVariable generalization: #TGlobalVariable. 
	globalVariable generalization: #TTypedStructure. 

	implicitVariable generalization: variable.
	implicitVariable generalization: #TImplicitVariable. 

	localVariable generalization: variable.
	localVariable generalization: #TLocalVariable. 

	parameter generalization: variable.
	parameter generalization: #TParameter. 

	unknownVariable generalization: variable.

]

{ #category : #'instance creation' }
FmxNGTestSmalltalkGenerator >> newBuilder [

	^ (FmxNGTestGenerator builderWithDefinitions)
		doNotGenerateCurrent;
		yourself
		
		
	
]
