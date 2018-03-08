"
g := FmxNGCompatibilityGenerator  new.
g builder traitsFlattening: true.
g generateWithoutCleaning.
FmxNGCompatibilityGenerator resetMetamodel.
"
Class {
	#name : #FmxNGCompatibilityGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'entity',
		'abstractFile',
		'abstractFileAnchor',
		'access',
		'annotationInstance',
		'annotationInstanceAttribute',
		'annotationType',
		'annotationTypeAttribute',
		'association',
		'attribute',
		'behaviouralEntity',
		'cFile',
		'cPPSourceLanguage',
		'cSourceLanguage',
		'cUSTOMSourceLanguage',
		'caughtException',
		'class',
		'comment',
		'compilationUnit',
		'containerEntity',
		'declaredException',
		'dereferencedInvocation',
		'enum',
		'enumValue',
		'exception',
		'file',
		'fileAnchor',
		'folder',
		'function',
		'globalVariable',
		'header',
		'implicitVariable',
		'include',
		'indexedFileAnchor',
		'inheritance',
		'invocation',
		'jAVASourceLanguage',
		'leafEntity',
		'localVariable',
		'method',
		'module',
		'multipleFileAnchor',
		'namedEntity',
		'namespace',
		'package',
		'parameter',
		'parameterType',
		'parameterizableClass',
		'parameterizedType',
		'pharoAnchor',
		'preprocessorDefine',
		'preprocessorIfdef',
		'preprocessorStatement',
		'primitiveType',
		'reference',
		'sMALLTALKSourceLanguage',
		'scopingEntity',
		'sourceAnchor',
		'sourceLanguage',
		'sourceTextAnchor',
		'sourcedEntity',
		'structuralEntity',
		'thrownException',
		'type',
		'typeAlias',
		'uNKNOWNSourceLanguage',
		'unknownVariable'
	],
	#category : #'FamixNG-MetamodelGeneration'
}

{ #category : #accessing }
FmxNGCompatibilityGenerator class >> packageName [

	^ #'FmxNGCompatibility-Generated'
]

{ #category : #accessing }
FmxNGCompatibilityGenerator class >> packageNameForUserClasses [

	^ #'FmxNGCompatibility-Entities'
]

{ #category : #accessing }
FmxNGCompatibilityGenerator class >> prefix [

	^ #'FmxNG'
]

{ #category : #initialization }
FmxNGCompatibilityGenerator >> defineClasses [

	entity := builder newClassNamed: #Entity.
	abstractFile := builder newClassNamed: #AbstractFile.
	abstractFileAnchor := builder newClassNamed: #AbstractFileAnchor.
	access := builder newClassNamed: #Access.
	annotationInstance := builder newClassNamed: #AnnotationInstance.
	annotationInstanceAttribute := builder newClassNamed: #AnnotationInstanceAttribute.
	annotationType := builder newClassNamed: #AnnotationType.
	annotationTypeAttribute := builder newClassNamed: #AnnotationTypeAttribute.
	association := builder newClassNamed: #Association.
	attribute := builder newClassNamed: #Attribute.
	behaviouralEntity := builder newClassNamed: #BehaviouralEntity.
	cFile := builder newClassNamed: #CFile.
	cPPSourceLanguage := builder newClassNamed: #CPPSourceLanguage.
	cSourceLanguage := builder newClassNamed: #CSourceLanguage.
	cUSTOMSourceLanguage := builder newClassNamed: #CUSTOMSourceLanguage.
	caughtException := builder newClassNamed: #CaughtException.
	class := builder newClassNamed: #Class.
	comment := builder newClassNamed: #Comment.
	compilationUnit := builder newClassNamed: #CompilationUnit.
	containerEntity := builder newClassNamed: #ContainerEntity.
	declaredException := builder newClassNamed: #DeclaredException.
	dereferencedInvocation := builder newClassNamed: #DereferencedInvocation.
	enum := builder newClassNamed: #Enum.
	enumValue := builder newClassNamed: #EnumValue.
	exception := builder newClassNamed: #Exception.
	file := builder newClassNamed: #File.
	fileAnchor := builder newClassNamed: #FileAnchor.
	folder := builder newClassNamed: #Folder.
	function := builder newClassNamed: #Function.
	globalVariable := builder newClassNamed: #GlobalVariable.
	header := builder newClassNamed: #Header.
	implicitVariable := builder newClassNamed: #ImplicitVariable.
	include := builder newClassNamed: #Include.
	indexedFileAnchor := builder newClassNamed: #IndexedFileAnchor.
	inheritance := builder newClassNamed: #Inheritance.
	invocation := builder newClassNamed: #Invocation.
	jAVASourceLanguage := builder newClassNamed: #JAVASourceLanguage.
	leafEntity := builder newClassNamed: #LeafEntity.
	localVariable := builder newClassNamed: #LocalVariable.
	method := builder newClassNamed: #Method.
	module := builder newClassNamed: #Module.
	multipleFileAnchor := builder newClassNamed: #MultipleFileAnchor.
	namedEntity := builder newClassNamed: #NamedEntity.
	namespace := builder newClassNamed: #Namespace.
	package := builder newClassNamed: #Package.
	parameter := builder newClassNamed: #Parameter.
	parameterType := builder newClassNamed: #ParameterType.
	parameterizableClass := builder newClassNamed: #ParameterizableClass.
	parameterizedType := builder newClassNamed: #ParameterizedType.
	pharoAnchor := builder newClassNamed: #PharoAnchor.
	preprocessorDefine := builder newClassNamed: #PreprocessorDefine.
	preprocessorIfdef := builder newClassNamed: #PreprocessorIfdef.
	preprocessorStatement := builder newClassNamed: #PreprocessorStatement.
	primitiveType := builder newClassNamed: #PrimitiveType.
	reference := builder newClassNamed: #Reference.
	sMALLTALKSourceLanguage := builder newClassNamed: #SMALLTALKSourceLanguage.
	scopingEntity := builder newClassNamed: #ScopingEntity.
	sourceAnchor := builder newClassNamed: #SourceAnchor.
	sourceLanguage := builder newClassNamed: #SourceLanguage.
	sourceTextAnchor := builder newClassNamed: #SourceTextAnchor.
	sourcedEntity := builder newClassNamed: #SourcedEntity.
	structuralEntity := builder newClassNamed: #StructuralEntity.
	thrownException := builder newClassNamed: #ThrownException.
	type := builder newClassNamed: #Type.
	typeAlias := builder newClassNamed: #TypeAlias.
	uNKNOWNSourceLanguage := builder newClassNamed: #UNKNOWNSourceLanguage.
	unknownVariable := builder newClassNamed: #UnknownVariable.

	self defineHierarchy.
]

{ #category : #initialization }
FmxNGCompatibilityGenerator >> defineHierarchy [

	entity <|-- abstractFile.
	entity <|-- file.
	entity <|-- folder.
	entity <|-- sourceAnchor.
	entity <|-- sourceLanguage.
	entity <|-- sourcedEntity.	
	entity <|-- exception.
	
	abstractFile generalization: namedEntity.
	
	abstractFileAnchor generalization: sourceAnchor.
	abstractFileAnchor generalization: #TFileAnchor.

	access generalization: association.
	access generalization: #TAccess.

	annotationInstance generalization: sourcedEntity.
	annotationInstance generalization: #TAnnotationInstance.
	annotationInstance generalization: #TWithAnnotationInstanceAttributes.
	annotationInstance generalization: #TTypedAnnotationInstance.

	annotationInstanceAttribute generalization: sourcedEntity.
	annotationInstanceAttribute generalization: #TAnnotationInstanceAttribute.
	annotationInstanceAttribute generalization: #TTypedAnnotationInstanceAttribute.

	annotationType generalization: type.
	annotationType generalization: #TAnnotationType.

	annotationTypeAttribute generalization: attribute.
	annotationTypeAttribute generalization: #TAnnotationTypeAttribute.
	annotationTypeAttribute generalization: #TTypedAnnotationInstanceAttribute.

	association generalization: sourcedEntity.
	association generalization: #TAssociation.

	attribute generalization: structuralEntity.
	attribute generalization: #TAttribute.
	attribute generalization: #TWithClassScope.

	behaviouralEntity generalization: containerEntity.
	behaviouralEntity generalization: #TWithParameters.
	behaviouralEntity generalization: #TInvocable.
	behaviouralEntity generalization: #TWithInvocations.
	behaviouralEntity generalization: #TWithReferences.
	behaviouralEntity generalization: #TTypedStructure.
	behaviouralEntity generalization: #TWithAccesses.
	behaviouralEntity generalization: #TWithLocalVariables.
	behaviouralEntity generalization: #TWithImplicitVariables.
	behaviouralEntity generalization: #TWithDereferencedInvocations.
	behaviouralEntity generalization: #TWithSignature.

	cFile generalization: file.
	cFile generalization: #TWithFileInclude.

	cPPSourceLanguage generalization: cSourceLanguage.

	cSourceLanguage generalization: sourceLanguage.

	cUSTOMSourceLanguage generalization: sourceLanguage.

	caughtException generalization: exception.
	caughtException generalization: #TCaughtException.

	class generalization: type.
	class generalization: #TWithExceptions.

	comment generalization: sourcedEntity.
	comment generalization: #TComment.

	compilationUnit generalization: cFile.
	compilationUnit generalization: #TCompilationUnit.
	compilationUnit generalization: #TWithModule.

	containerEntity generalization: namedEntity.
	containerEntity generalization: #TWithTypes.
	containerEntity generalization: #TWithFunctions.
	containerEntity generalization: #TWithAnnotationTypes.

	declaredException generalization: exception.
	declaredException generalization: #TDeclaredException.

	dereferencedInvocation generalization: invocation.
	dereferencedInvocation generalization: #TDereferencedInvocation.

	enum generalization: type.
	enum generalization: #TWithEnumValues.

	enumValue generalization: structuralEntity.
	enumValue generalization: #TEnumValue.

	exception generalization: #TException.

	fileAnchor generalization: abstractFileAnchor.

	function generalization: behaviouralEntity.
	function generalization: #TFunction.

	globalVariable generalization: structuralEntity.
	globalVariable generalization: #TGlobalVariable.

	header generalization: cFile.
	header generalization: #THeader.

	implicitVariable generalization: structuralEntity.
	implicitVariable generalization: #TImplicitVariable.

	include generalization: association.
	include generalization: #TFileInclude.

	indexedFileAnchor generalization: abstractFileAnchor.

	inheritance generalization: association.
	inheritance generalization: #TSubInheritance.
	inheritance generalization: #TSuperInheritance.

	invocation generalization: association.
	invocation generalization: #TInvocation.
	invocation generalization: #TWithSignature.

	jAVASourceLanguage generalization: sourceLanguage.

	leafEntity generalization: namedEntity.

	localVariable generalization: structuralEntity.
	localVariable generalization: #TLocalVariable.

	method generalization: behaviouralEntity.
	method generalization: #TMethod.
	method generalization: #TWithThrownExceptions.
	method generalization: #TWithDeclaredExceptions.
	method generalization: #TWithCaughtExceptions.
	method generalization: #TWithClassScope.

	module generalization: scopingEntity.
	module generalization: #TModule.
	module generalization: #TWithCompilationUnit.
	module generalization: #TWithHeader.

	multipleFileAnchor generalization: sourceAnchor.

	namedEntity generalization: sourcedEntity.
	namedEntity generalization: #TNamed.
	namedEntity generalization: #TPackageable.
	namedEntity generalization: #TInvocationsReceiver.
	namedEntity generalization: #TWithAnnotationInstances.
	namedEntity generalization: #TWithModifiers.

	namespace generalization: scopingEntity.
	namespace generalization: #TNamespace.

	package generalization: scopingEntity.
	package generalization: #TPackage.

	parameter generalization: structuralEntity.
	parameter generalization: #TParameter.

	parameterType generalization: type.

	parameterizableClass generalization: class.
	parameterizableClass generalization: #TWithParameterizedTypes.

	parameterizedType generalization: type.
	parameterizedType generalization: #TParameterizedType.
	parameterizedType generalization: #TWithParameterizedTypeUsers.

	pharoAnchor generalization: sourceAnchor.

	preprocessorDefine generalization: preprocessorStatement.
	preprocessorDefine generalization: #TPreprocessorIfdef.

	preprocessorIfdef generalization: preprocessorStatement.

	preprocessorStatement generalization: sourcedEntity.

	primitiveType generalization: type.

	reference generalization: association.
	reference generalization: #TReference.

	sMALLTALKSourceLanguage generalization: sourceLanguage.

	scopingEntity generalization: containerEntity.
	scopingEntity generalization: #TGlobalVariableScope.
	scopingEntity generalization: #TScopingEntity.

	sourceAnchor generalization: #TSourceAnchor.

	sourceLanguage generalization: #TSourceLanguage.

	sourceTextAnchor generalization: sourceAnchor.

	sourcedEntity generalization: #TWithSourceAnchor.
	sourcedEntity generalization: #TWithComments.
	sourcedEntity generalization: #TWithSourceLanguage.
	sourcedEntity generalization: #TWithFiles.

	structuralEntity generalization: leafEntity.
	structuralEntity generalization: #TAccessible.
	structuralEntity generalization: #TWithDereferencedInvocations.
	structuralEntity generalization: #TTypedStructure.

	thrownException generalization: exception.
	thrownException generalization: #TThrownException.

	type generalization: namedEntity.
	type generalization: #TType.
	type generalization: #TReferenceable.
	type generalization: #TWithTypedStructures.
	type generalization: #TWithTypeAliases.
	type generalization: #TWithMethods.
	type generalization: #TWithSuperInheritances.
	type generalization: #TWithSubInheritances.
	type generalization: #TWithAttributes.
	type generalization: #TParameterizedTypeUser.

	typeAlias generalization: type.
	typeAlias generalization: #TTypeAlias.

	uNKNOWNSourceLanguage generalization: sourceLanguage.

	unknownVariable generalization: structuralEntity.

]

{ #category : #initialization }
FmxNGCompatibilityGenerator >> newBuilder [

	^ (FmxNGGenerator builderWithDefinitions)
		doNotGenerateCurrent;
		generator: self;
		yourself
		
		
	
]
