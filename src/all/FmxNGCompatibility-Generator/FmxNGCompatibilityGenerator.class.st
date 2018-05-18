"
g := FmxNGCompatibilityGenerator  new.
g builder traitsFlattening: true.
g generateWithoutCleaning.
FmxNGCompatibilityGenerator resetMetamodel.
"
Class {
	#name : #FmxNGCompatibilityGenerator,
	#superclass : #FmxNGBasicInfrastructureGenerator,
	#instVars : [
		'abstractFile',
		'abstractFileAnchor',
		'access',
		'annotationInstance',
		'annotationInstanceAttribute',
		'annotationType',
		'annotationTypeAttribute',
		'attribute',
		'behaviouralEntity',
		'cFile',
		'cPPSourceLanguage',
		'cSourceLanguage',
		'cUSTOMSourceLanguage',
		'caughtException',
		'class',
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
		'sourceTextAnchor',
		'structuralEntity',
		'thrownException',
		'type',
		'typeAlias',
		'uNKNOWNSourceLanguage',
		'unknownVariable',
		'trait',
		'traitUsage'
	],
	#category : #'FmxNGCompatibility-Generator'
}

{ #category : #accessing }
FmxNGCompatibilityGenerator class >> packageName [

	^ #'FmxNGCompatibility-Entities'
]

{ #category : #accessing }
FmxNGCompatibilityGenerator class >> prefix [

	^ #'FmxNG'
]

{ #category : #accessing }
FmxNGCompatibilityGenerator class >> resetMetamodel [

	" self resetMetamodel"

	| classes tower |

	classes := self packageName asPackage definedClasses select: [ :each | each inheritsFrom: MooseEntity ].
	
	classes addAll: #'FmxNG-Traits' asPackage definedClasses.
	
	{ Trait. Class. ClassDescription. Behavior. 
	MooseModel. MooseAbstractGroup. MooseEntity. MooseGroup. FamixImportingContext} 
		do: [ :each | classes add: each ].

	tower := MooseModel metaBuilder: classes.
	self metamodel: tower metamodel.
	^ metamodel

	
]

{ #category : #accessing }
FmxNGCompatibilityGenerator class >> translationDictionary [

	| classNames associations |

	"based on #'FmxNGCompatibility-Entities' asPackage definedClasses collect: [:e | e name withoutPrefix: 'FmxNG' ]."
	
	classNames :=  #('AnnotationType' 'AnnotationTypeAttribute' 'ParameterizableClass' 'PrimitiveType' 'CaughtException' 'GlobalVariable' 'SourceLanguage' 'PreprocessorIfdef' 'ImplicitVariable' 'EnumValue' 'LeafEntity' 'SourcedEntity' 'Entity' 'Inheritance' 'ScopingEntity' 'Invocation' 'PreprocessorDefine' 'BehaviouralEntity' 'Header' 'Trait' 'CFile' 'TraitUsage' 'ParameterType' 'SourceAnchor' 'LocalVariable' 'ParameterizedType' 'NamedEntity' 'Type' 'CSourceLanguage' 'TypeAlias' 'Comment' 'FileAnchor' 'Parameter' 'Reference' 'AbstractFile' 'Exception' 'AbstractFileAnchor' 'SourceTextAnchor' 'CompilationUnit' 'ThrownException' 'ContainerEntity' 'File' 'StructuralEntity' 'UnknownVariable' 'DereferencedInvocation' 'CPPSourceLanguage' 'Association' 'Folder' 'IndexedFileAnchor' 'Attribute' 'Module' 'PreprocessorStatement' 'Method' 'Enum' 'AnnotationInstance' 'Package' 'MultipleFileAnchor' 'Class' 'Include' 'Access' 'PharoAnchor' 'DeclaredException' 'Function' 'Namespace' 'AnnotationInstanceAttribute').
	
	associations := classNames collect: [ :each | ('FAMIX.', each) -> ('FmxNGCompatibility-Entities.', each) ] as: OrderedCollection.

	associations addAll: { 
		'FAMIX.UnknownSourceLanguage' -> 'FmxNGCompatibility-Entities.UNKNOWNSourceLanguage'.
		'FAMIX.SmalltalkSourceLanguage' -> 'FmxNGCompatibility-Entities.SMALLTALKSourceLanguage'.
		'FAMIX.JavaSourceLanguage' -> 'FmxNGCompatibility-Entities.JAVASourceLanguage'.
		'FAMIX.CustomSourceLanguage' -> 'FmxNGCompatibility-Entities.CUSTOMSourceLanguage'.
	 }.	

	^ Dictionary newFrom: associations.	
]

{ #category : #initialization }
FmxNGCompatibilityGenerator >> defineClasses [

	super defineClasses.

	abstractFile := builder newClassNamed: #AbstractFile.
	abstractFileAnchor := builder newClassNamed: #AbstractFileAnchor.
	access := builder newClassNamed: #Access.
	annotationInstance := builder newClassNamed: #AnnotationInstance.
	annotationInstanceAttribute := builder newClassNamed: #AnnotationInstanceAttribute.
	annotationType := builder newClassNamed: #AnnotationType.
	annotationTypeAttribute := builder newClassNamed: #AnnotationTypeAttribute.
	attribute := builder newClassNamed: #Attribute.
	behaviouralEntity := builder newClassNamed: #BehaviouralEntity.
	cFile := builder newClassNamed: #CFile.
	cPPSourceLanguage := builder newClassNamed: #CPPSourceLanguage.
	cSourceLanguage := builder newClassNamed: #CSourceLanguage.
	cUSTOMSourceLanguage := builder newClassNamed: #CUSTOMSourceLanguage.
	caughtException := builder newClassNamed: #CaughtException.
	class := builder newClassNamed: #Class.
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
	sourceTextAnchor := builder newClassNamed: #SourceTextAnchor.
	structuralEntity := builder newClassNamed: #StructuralEntity.
	thrownException := builder newClassNamed: #ThrownException.
	type := builder newClassNamed: #Type.
	typeAlias := builder newClassNamed: #TypeAlias.
	uNKNOWNSourceLanguage := builder newClassNamed: #UNKNOWNSourceLanguage.
	unknownVariable := builder newClassNamed: #UnknownVariable.
	trait := builder newClassNamed: #Trait.
	traitUsage := builder newClassNamed: #TraitUsage.

	self defineHierarchy.
]

{ #category : #initialization }
FmxNGCompatibilityGenerator >> defineHierarchy [

	super defineHierarchy.

	entity <|-- abstractFile.
	entity <|-- exception.
	
	abstractFile <|-- file.
	abstractFile <|-- folder.

	abstractFile --|> namedEntity.
	
	abstractFileAnchor --|> sourceAnchor.
	abstractFileAnchor --|> #TFileAnchor.

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

	behaviouralEntity --|> containerEntity.
	behaviouralEntity --|> #TWithParameters.
	behaviouralEntity --|> #TInvocable.
	behaviouralEntity --|> #TWithInvocations.
	behaviouralEntity --|> #TWithReferences.
	behaviouralEntity --|> #TTypedStructure.
	behaviouralEntity --|> #TWithAccesses.
	behaviouralEntity --|> #TWithLocalVariables.
	behaviouralEntity --|> #TWithImplicitVariables.
	behaviouralEntity --|> #TWithDereferencedInvocations.
	behaviouralEntity --|> #TWithSignature.

	cFile --|> file.
	cFile --|> #TWithFileInclude.

	cPPSourceLanguage --|> cSourceLanguage.

	cSourceLanguage --|> sourceLanguage.

	cUSTOMSourceLanguage --|> sourceLanguage.
	cUSTOMSourceLanguage --|> #TNamed.

	caughtException --|> exception.
	caughtException --|> #TCaughtException.

	class --|> type.
	class --|> #TWithExceptions.
	class --|> #TClass.

	compilationUnit --|> cFile.
	compilationUnit --|> #TCompilationUnit.
	compilationUnit --|> #TWithModule.

	containerEntity --|> namedEntity.
	containerEntity --|> #TWithTypes.
	containerEntity --|> #TWithFunctions.
	containerEntity --|> #TWithAnnotationTypes.

	declaredException --|> exception.
	declaredException --|> #TDeclaredException.

	dereferencedInvocation --|> invocation.
	dereferencedInvocation --|> #TDereferencedInvocation.

	enum --|> type.
	enum --|> #TWithEnumValues.

	enumValue --|> structuralEntity.
	enumValue --|> #TEnumValue.

	exception --|> #TException.

	file --|> #TFile.

	fileAnchor --|> abstractFileAnchor.

	function --|> behaviouralEntity.
	function --|> #TFunction.

	globalVariable --|> structuralEntity.
	globalVariable --|> #TGlobalVariable.

	header --|> cFile.
	header --|> #THeader.

	implicitVariable --|> structuralEntity.
	implicitVariable --|> #TImplicitVariable.

	include --|> association.
	include --|> #TFileInclude.

	indexedFileAnchor --|> abstractFileAnchor.

	inheritance --|> association.
	inheritance --|> #TSubInheritance.
	inheritance --|> #TSuperInheritance.

	invocation --|> association.
	invocation --|> #TInvocation.
	invocation --|> #TWithSignature.

	jAVASourceLanguage --|> sourceLanguage.

	leafEntity --|> namedEntity.

	localVariable --|> structuralEntity.
	localVariable --|> #TLocalVariable.

	method --|> behaviouralEntity.
	method --|> #TMethod.
	method --|> #TWithThrownExceptions.
	method --|> #TWithDeclaredExceptions.
	method --|> #TWithCaughtExceptions.
	method --|> #TWithClassScope.

	module --|> scopingEntity.
	module --|> #TModule.
	module --|> #TWithCompilationUnit.
	module --|> #TWithHeader.

	multipleFileAnchor --|> sourceAnchor.

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

	parameterType --|> type.

	parameterizableClass --|> class.
	parameterizableClass --|> #TWithParameterizedTypes.

	parameterizedType --|> type.
	parameterizedType --|> #TParameterizedType.
	parameterizedType --|> #TWithParameterizedTypeUsers.

	pharoAnchor --|> sourceAnchor.

	preprocessorDefine --|> preprocessorStatement.
	preprocessorDefine --|> #TPreprocessorIfdef.

	preprocessorIfdef --|> preprocessorStatement.

	preprocessorStatement --|> sourcedEntity.

	primitiveType --|> type.

	reference --|> association.
	reference --|> #TReference.

	sMALLTALKSourceLanguage --|> sourceLanguage.

	scopingEntity --|> containerEntity.
	scopingEntity --|> #TGlobalVariableScope.
	scopingEntity --|> #TScopingEntity.

	sourceAnchor --|> #TSourceAnchor.

	sourcedEntity --|> #TWithFiles.

	sourceTextAnchor --|> sourceAnchor.

	structuralEntity --|> leafEntity.
	structuralEntity --|> #TAccessible.
	structuralEntity --|> #TWithDereferencedInvocations.
	structuralEntity --|> #TTypedStructure.

	thrownException --|> exception.
	thrownException --|> #TThrownException.

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

	typeAlias --|> type.
	typeAlias --|> #TTypeAlias.

	uNKNOWNSourceLanguage --|> sourceLanguage.

	unknownVariable --|> structuralEntity.
	
	trait --|> type.
	trait --|> #TTrait.
	
	traitUsage --|> association.
	traitUsage --|> #TTraitUsage.
	

]

{ #category : #initialization }
FmxNGCompatibilityGenerator >> newBuilder [

	^ (FmxNGGenerator builderWithDefinitions)
		doNotGenerateCurrent;
		generator: self;
		yourself
		
		
	
]
