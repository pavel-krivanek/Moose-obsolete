Class {
	#name : #FmxNGPharoSmalltalkGenerator,
	#superclass : #FmxNGBasicInfrastructureGenerator,
	#instVars : [
		'access',
		'annotationInstance',
		'annotationInstanceAttribute',
		'annotationType',
		'annotationTypeAttribute',
		'attribute',
		'class',
		'containerEntity',
		'globalVariable',
		'implicitVariable',
		'inheritance',
		'invocation',
		'localVariable',
		'method',
		'namespace',
		'package',
		'parameter',
		'reference',
		'structuralEntity',
		'scopingEntity',
		'smalltalkSourceLanguage',
		'type',
		'unknownSourceLanguage',
		'unknownVariable'
	],
	#category : #'FmxNGPharoSmalltalk-Generator'
}

{ #category : #accessing }
FmxNGPharoSmalltalkGenerator class >> packageName [

	^ #'FmxNGPharoSmalltalk-Entities'
]

{ #category : #accessing }
FmxNGPharoSmalltalkGenerator class >> prefix [

	^ #'FmxNGSt'
]

{ #category : #initialization }
FmxNGPharoSmalltalkGenerator >> defineClasses [

	super defineClasses.

	access := builder newClassNamed: #Access.
	annotationInstance := builder newClassNamed: #AnnotationInstance.
	annotationInstanceAttribute := builder newClassNamed: #AnnotationInstanceAttribute.
	annotationType := builder newClassNamed: #AnnotationType.
	annotationTypeAttribute := builder newClassNamed: #AnnotationTypeAttribute.
	attribute := builder newClassNamed: #Attribute.
	class := builder newClassNamed: #Class.
	containerEntity := builder newClassNamed: #ContainerEntity.
	globalVariable := builder newClassNamed: #GlobalVariable.
	implicitVariable := builder newClassNamed: #ImplicitVariable.
	inheritance := builder newClassNamed: #Inheritance.
	invocation := builder newClassNamed: #Invocation.
	localVariable := builder newClassNamed: #LocalVariable.
	method := builder newClassNamed: #Method.
	namespace := builder newClassNamed: #Namespace.
	package := builder newClassNamed: #Package.
	parameter := builder newClassNamed: #Parameter.
	reference := builder newClassNamed: #Reference.
	scopingEntity := builder newClassNamed: #ScopingEntity.
	structuralEntity := builder newClassNamed: #StructuralEntity.
	smalltalkSourceLanguage := builder newClassNamed: #SmalltalkSourceLanguage.
	type := builder newClassNamed: #Type.
	unknownSourceLanguage := builder newClassNamed: #UnknownSourceLanguage.
	unknownVariable := builder newClassNamed: #UnknownVariable.
	
	self defineHierarchy.
]

{ #category : #initialization }
FmxNGPharoSmalltalkGenerator >> defineHierarchy [

	super defineHierarchy.

	access --|> association.
	access --|> #TAccess.

	annotationInstance --|> sourcedEntity.
	annotationInstance --|> #TAnnotationInstance.
	annotationInstance --|> #TWithAnnotationInstanceAttributes.
	annotationInstance --|> #TTypedAnnotationInstance.

	annotationInstanceAttribute --|> sourcedEntity.
	annotationInstanceAttribute --|> #TAnnotationInstanceAttribute.
	annotationInstanceAttribute --|> #TTypedAnnotationInstanceAttribute.

	annotationType --|> type.
	annotationType --|> #TAnnotationType.

	annotationTypeAttribute --|> attribute.
	annotationTypeAttribute --|> #TAnnotationTypeAttribute.
	annotationTypeAttribute --|> #TTypedAnnotationInstanceAttribute.

	attribute --|> structuralEntity.
	attribute --|> #TAttribute.
	attribute --|> #TWithClassScope.

	class --|> type.
	class --|> #TWithExceptions.
	class --|> #TClass.

	containerEntity --|> namedEntity.
	containerEntity --|> #TWithTypes.
	containerEntity --|> #TWithAnnotationTypes.

	globalVariable --|> structuralEntity.
	globalVariable --|> #TGlobalVariable.
	globalVariable --|> #TDefinedInModule.

	implicitVariable --|> structuralEntity.
	implicitVariable --|> #TImplicitVariable.

	inheritance --|> association.
	inheritance --|> #TSubInheritance.
	inheritance --|> #TSuperInheritance.

	invocation --|> association.
	invocation --|> #TInvocation.
	invocation --|> #TWithSignature.

	localVariable --|> structuralEntity.
	localVariable --|> #TLocalVariable.

	method --|> containerEntity.
	method --|> #TWithParameters.
	method --|> #TInvocable.
	method --|> #TWithInvocations.
	method --|> #TWithReferences.
	method --|> #TTypedStructure.
	method --|> #TWithAccesses.
	method --|> #TWithLocalVariables.
	method --|> #TWithImplicitVariables.
	method --|> #TWithSignature.
	method --|> #TMethod.
	method --|> #TWithClassScope.

	namedEntity --|> #TPackageable.
	namedEntity --|> #TInvocationsReceiver.
	namedEntity --|> #TWithAnnotationInstances.
	namedEntity --|> #TWithModifiers.
	namedEntity --|> #TPossibleStub.

	namespace --|> scopingEntity.
	namespace --|> #TNamespace.

	package --|> scopingEntity.
	package --|> #TPackage.

	parameter --|> structuralEntity.
	parameter --|> #TParameter.

	reference --|> association.
	reference --|> #TReference.

	smalltalkSourceLanguage --|> sourceLanguage.

	scopingEntity --|> containerEntity.
	scopingEntity --|> #TGlobalVariableScope.
	scopingEntity --|> #TScopingEntity.

	structuralEntity --|> namedEntity.
	structuralEntity --|> #TAccessible.
	structuralEntity --|> #TTypedStructure.

	type --|> containerEntity.
	type --|> #TType.
	type --|> #TReferenceable.
	type --|> #TWithTypedStructures.
	type --|> #TWithTypeAliases.
	type --|> #TWithMethods.
	type --|> #TWithSuperInheritances.
	type --|> #TWithSubInheritances.
	type --|> #TWithAttributes.
	type --|> #TParameterizedTypeUser.

	unknownSourceLanguage --|> sourceLanguage.

	unknownVariable --|> structuralEntity.
	

	

]

{ #category : #initialization }
FmxNGPharoSmalltalkGenerator >> newBuilder [

	^ (FmxNGGenerator builderWithDefinitions)
		doNotGenerateCurrent;
		generator: self;
		yourself
		
		
	
]
