Class {
	#name : #FmxNGTestGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'tAccess',
		'tAccessible',
		'tAnnotationInstance',
		'tAnnotationInstanceAttribute',
		'tAnnotationType',
		'tAnnotationTypeAttribute',
		'tAssociation',
		'tAttribute',
		'tCaughtException',
		'tComment',
		'tCompilationUnit',
		'tDeclaredException',
		'tDereferencedInvocation',
		'tEnumValue',
		'tException',
		'tFile',
		'tFileAnchor',
		'tFileInclude',
		'tFunction',
		'tGlobalVariable',
		'tGlobalVariableScope',
		'tHeader',
		'tImplicitVariable',
		'tInvocable',
		'tInvocation',
		'tInvocationsReceiver',
		'tLocalVariable',
		'tMethod',
		'tModule',
		'tNamed',
		'tNamespace',
		'tNamespaceEntity',
		'tPackage',
		'tPackageable',
		'tParameter',
		'tParameterizedType',
		'tParameterizedTypeUser',
		'tPreprocessorDefine',
		'tPreprocessorIfdef',
		'tReference',
		'tReferenceable',
		'tScopingEntity',
		'tSourceAnchor',
		'tSourceLanguage',
		'tSub',
		'tSubInheritance',
		'tSuper',
		'tSuperInheritance',
		'tTemplate',
		'tTemplateUser',
		'tThrownException',
		'tTrait',
		'tType',
		'tTypeAlias',
		'tTypedAnnotationInstance',
		'tTypedAnnotationInstanceAttribute',
		'tTypedStructure',
		'tWithAccesses',
		'tWithAnnotationInstanceAttributes',
		'tWithAnnotationInstances',
		'tWithAnnotationTypes',
		'tWithAttributes',
		'tWithCaughtExceptions',
		'tWithClassScope',
		'tWithComments',
		'tWithCompilationUnit',
		'tWithDeclaredExceptions',
		'tWithDereferencedInvocations',
		'tWithEnumValues',
		'tWithExceptions',
		'tWithFileInclude',
		'tWithFiles',
		'tWithFunctions',
		'tWithHeader',
		'tWithImplicitVariables',
		'tWithInvocations',
		'tWithLocalVariables',
		'tWithMethods',
		'tWithModule',
		'tWithNamespaces',
		'tWithPackages',
		'tWithParameterizedTypeUsers',
		'tWithParameterizedTypes',
		'tWithParameters',
		'tWithReferences',
		'tWithSignature',
		'tWithSourceAnchor',
		'tWithSourceLanguage',
		'tWithSubInheritances',
		'tWithSuperInheritances',
		'tWithTemplates',
		'tWithThrownExceptions',
		'tWithTrait',
		'tWithTypeAliases',
		'tWithTypedStructures',
		'tWithTypes'
	],
	#category : #'FamixNG-MetamodelGeneration'
}

{ #category : #initialization }
FmxNGTestGenerator >> define [

	self defineTraits.
	self defineProperties.

]

{ #category : #initialization }
FmxNGTestGenerator >> defineProperties [

	((tAccess property: #accessor)
			comment: 'Behavioural entity making the access to the variable. from-side of the association';
			source)
		*-
	((tWithAccesses property: #accesses)
			comment: 'Accesses to variables made by this behaviour.').

	((tAccess property: #variable)
			comment: 'Variable accessed. to-side of the association';
			target)
		*-
	((tAccessible property: #incomingAccesses)
			comment: 'All Famix accesses pointing to this structural entity').

	((tAnnotationInstance property: #annotatedEntity)
			comment: 'The NamedEntity on which the annotation occurs.';
			container)
		*-
	((tWithAnnotationInstances property: #annotationInstances)
			comment: 'This property corresponds to the set of annotations associated to the entity').

	((tAnnotationInstanceAttribute property: #parentAnnotationInstance)
			comment: 'The instance of the annotation in which the attribute is used.';
			container)
		*-
	((tWithAnnotationInstanceAttributes property: #attributes)
			comment: 'This corresponds to the actual values of the attributes in an AnnotationInstance').

	((tAnnotationType property: #instances)
			comment: 'Annotations of this type')
		-*
	((tTypedAnnotationInstance property: #annotationType)
			comment: 'Refers to the type of an annotation. (In some languages, Java and C#, an annotation as an explicit type). ';
			container).

	((tAnnotationType property: #annotationTypesContainer))
		*-
	((tWithAnnotationTypes property: #definedAnnotationTypes)).

	((tAnnotationTypeAttribute property: #annotationAttributeInstances)
			comment: 'A collection of AnnotationInstanceAttribute which hold the usages of this attribute in actual AnnotationInstances')
		-*
	((tTypedAnnotationInstanceAttribute property: #annotationTypeAttribute)
			comment: 'This corresponds to the type of the attribute in an AnnotationInstance').

	((tAssociation property: #previous)
			comment: 'Previous association in an ordered collection of associations. Currently not supported by the Moose importer')
		-
	((tAssociation property: #next)
			comment: 'Next association in an ordered collection of associations. Currently not supported by the Moose importer').

	((tAttribute property: #parentType)
			comment: 'Type declaring the attribute. belongsTo implementation';
			container)
		*-
	((tWithAttributes property: #attributes)
			comment: 'List of attributes declared by this type.').

	((tCaughtException property: #definingEntity))
		*-
	((tWithCaughtExceptions property: #caughtExceptions)).

	((tComment property: #container)
			comment: 'Source code entity containing the comment')
		*-
	((tWithComments property: #comments)
			comment: 'list of comments defined in the entity').

	((tCompilationUnit property: #compilationUnitOwner))
		-
	((tWithCompilationUnit property: #compilationUnit)).

	((tDeclaredException property: #definingEntity))
		*-
	((tWithDeclaredExceptions property: #declaredExceptions)).

	((tDereferencedInvocation property: #referencer)
			comment: 'Structural entity that references the BehaviouralEntity invoked')
		*-
	((tWithDereferencedInvocations property: #dereferencedInvocations)
			comment: 'List of invocations performed on BehaviouralEntities referenced by this entity').

	((tEnumValue property: #parentEnum)
			comment: 'The Enum declaring this value. It offers the implementation of belongsTo';
			container)
		*-
	((tWithEnumValues property: #enumValues)).

	((tException property: #exceptionClass)
			comment: 'Class to which the exception points. It is specific to Java')
		*-
	((tWithExceptions property: #exceptions)
			comment: 'Exceptions which class is myself.').

	((tFile property: #entities)
			comment: 'List of entities defined in the file')
		**-
	((tWithFiles property: #containerFiles)
			comment: 'List of files containing the entity').

	((tFileInclude property: #source))
		*-
	((tWithFileInclude property: #outgoingIncludeRelations)).

	((tFileInclude property: #target))
		*-
	((tWithFileInclude property: #incomingIncludeRelations)).

	((tFunction property: #functionOwner))
		*-
	((tWithFunctions property: #functions)).

	((tGlobalVariable property: #parentScope)
			comment: 'Scope declaring the global variable. belongsTo implementation';
			container)
		*-
	((tGlobalVariableScope property: #globalVariables)
			comment: 'Global variables defined in the scope, if any.').

	((tHeader property: #headerOwner))
		-
	((tWithHeader property: #header)).

	((tImplicitVariable property: #parentBehaviouralEntity)
			comment: 'The behaviour containing this implicit variable. belongsTo implementation';
			container)
		*-
	((tWithImplicitVariables property: #implicitVariables)
			comment: 'Implicit variables used locally by this behaviour.').

	((tInvocable property: #incomingInvocations))
		**-
	((tInvocation property: #candidates)).

	((tInvocation property: #sender)
			comment: 'Behavioural entity making the call. from-side of the association';
			source)
		*-
	((tWithInvocations property: #outgoingInvocations)
			comment: 'Outgoing invocations sent by this behaviour.').

	((tInvocation property: #receiver)
			comment: 'Named entity (variable, class...) receiving the invocation. to-side of the association')
		*-
	((tInvocationsReceiver property: #receivingInvocations)
			comment: 'List of invocations performed on this entity (considered as the receiver)').

	((tLocalVariable property: #parentBehaviouralEntity)
			comment: 'Behavioural entity declaring this local variable. belongsTo implementation';
			container)
		*-
	((tWithLocalVariables property: #localVariables)
			comment: 'Variables locally defined by this behaviour.').

	((tMethod property: #parentType)
			comment: 'Type declaring the method. It provides the implementation for belongsTo.';
			container)
		*-
	((tWithMethods property: #methods)
			comment: 'Methods declared by this type.').

	((tModule property: #moduleFiles))
		-*
	((tWithModule property: #module)).

	((tNamespace property: #namespaceEntities))
		-*
	((tNamespaceEntity property: #parentNamespace)).

	((tNamespace property: #namespaceOwner))
		*-
	((tWithNamespaces property: #namespaces)).

	((tPackage property: #childEntities))
		-*
	((tPackageable property: #parentPackage)).

	((tPackage property: #packageOwner))
		*-
	((tWithPackages property: #packages)).

	((tParameter property: #parentBehaviouralEntity)
			comment: 'Behavioural entity containing this parameter. belongsTo implementation';
			container)
		*-
	((tWithParameters property: #parameters)
			comment: 'List of formal parameters declared by this behaviour.').

	((tParameterizedType property: #parameterizableClass)
			comment: 'Base type of this parameterized type.')
		*-
	((tWithParameterizedTypes property: #parameterizedTypes)).

	((tParameterizedTypeUser property: #argumentsInParameterizedTypes))
		**-
	((tWithParameterizedTypeUsers property: #arguments)).

	((tReference property: #source)
			comment: 'Source entity making the reference. from-side of the association';
			source)
		*-
	((tWithReferences property: #outgoingReferences)
			comment: 'References from this entity to other entities.').

	((tReference property: #target)
			comment: 'Target entity referenced. to-side of the association';
			target)
		*-
	((tReferenceable property: #incomingReferences)
			comment: 'References to this entity by other entities.').

	((tScopingEntity property: #parentScope)
			comment: 'Parent scope embedding this scope, if any.';
			container)
		*-
	((tScopingEntity property: #childScopes)
			comment: 'Child scopes embedded in this scope, if any.').

	((tSourceAnchor property: #element)
			comment: 'Enable the accessibility to the famix entity that this class is a source pointer for';
			container)
		-
	((tWithSourceAnchor property: #sourceAnchor)
			comment: 'SourceAnchor entity linking to the original source code for this entity').

	((tSourceLanguage property: #sourcedEntities)
			comment: 'References to the entities saying explicitly that are written in this language.')
		-*
	((tWithSourceLanguage property: #declaredSourceLanguage)
			comment: 'The declared SourceLanguage for the source code of this entity').

	((tSub property: #supers))
		**-
	((tSuper property: #subs)).

	((tSubInheritance property: #subclass))
		*-
	((tWithSubInheritances property: #superInheritances)).

	((tSuperInheritance property: #superclass))
		*-
	((tWithSuperInheritances property: #subInheritances)).

	((tTemplate property: #templateOwner))
		*-
	((tWithTemplates property: #templates)).

	((tTemplate property: #templateUsers))
		-*
	((tTemplateUser property: #template)).

	((tThrownException property: #definingEntity))
		*-
	((tWithThrownExceptions property: #thrownExceptions)).

	((tTrait property: #users))
		*-
	((tWithTrait property: #traits)).

	((tType property: #typedEntities))
		*-
	((tWithTypes property: #types)).

	((tTypeAlias property: #aliasedType)
			comment: 'Points to the actual type.')
		*-
	((tWithTypeAliases property: #typeAliases)
			comment: 'Aliases').

	((tTypedStructure property: #declaredType))
		*-
	((tWithTypedStructures property: #structuresWithDeclaredType)).


]

{ #category : #initialization }
FmxNGTestGenerator >> defineTraits [

	tAccess := builder newTraitNamed: #TAccess.
	tAccessible := builder newTraitNamed: #TAccessible.
	tAnnotationInstance := builder newTraitNamed: #TAnnotationInstance.
	tAnnotationInstanceAttribute := builder newTraitNamed: #TAnnotationInstanceAttribute.
	tAnnotationType := builder newTraitNamed: #TAnnotationType.
	tAnnotationTypeAttribute := builder newTraitNamed: #TAnnotationTypeAttribute.
	tAssociation := builder newTraitNamed: #TAssociation.
	tAttribute := builder newTraitNamed: #TAttribute.
	tCaughtException := builder newTraitNamed: #TCaughtException.
	tComment := builder newTraitNamed: #TComment.
	tCompilationUnit := builder newTraitNamed: #TCompilationUnit.
	tDeclaredException := builder newTraitNamed: #TDeclaredException.
	tDereferencedInvocation := builder newTraitNamed: #TDereferencedInvocation.
	tEnumValue := builder newTraitNamed: #TEnumValue.
	tException := builder newTraitNamed: #TException.
	tFile := builder newTraitNamed: #TFile.
	tFileAnchor := builder newTraitNamed: #TFileAnchor.
	tFileInclude := builder newTraitNamed: #TFileInclude.
	tFunction := builder newTraitNamed: #TFunction.
	tGlobalVariable := builder newTraitNamed: #TGlobalVariable.
	tGlobalVariableScope := builder newTraitNamed: #TGlobalVariableScope.
	tHeader := builder newTraitNamed: #THeader.
	tImplicitVariable := builder newTraitNamed: #TImplicitVariable.
	tInvocable := builder newTraitNamed: #TInvocable.
	tInvocation := builder newTraitNamed: #TInvocation.
	tInvocationsReceiver := builder newTraitNamed: #TInvocationsReceiver.
	tLocalVariable := builder newTraitNamed: #TLocalVariable.
	tMethod := builder newTraitNamed: #TMethod.
	tModule := builder newTraitNamed: #TModule.
	tNamed := builder newTraitNamed: #TNamed.
	tNamespace := builder newTraitNamed: #TNamespace.
	tNamespaceEntity := builder newTraitNamed: #TNamespaceEntity.
	tPackage := builder newTraitNamed: #TPackage.
	tPackageable := builder newTraitNamed: #TPackageable.
	tParameter := builder newTraitNamed: #TParameter.
	tParameterizedType := builder newTraitNamed: #TParameterizedType.
	tParameterizedTypeUser := builder newTraitNamed: #TParameterizedTypeUser.
	tPreprocessorDefine := builder newTraitNamed: #TPreprocessorDefine.
	tPreprocessorIfdef := builder newTraitNamed: #TPreprocessorIfdef.
	tReference := builder newTraitNamed: #TReference.
	tReferenceable := builder newTraitNamed: #TReferenceable.
	tScopingEntity := builder newTraitNamed: #TScopingEntity.
	tSourceAnchor := builder newTraitNamed: #TSourceAnchor.
	tSourceLanguage := builder newTraitNamed: #TSourceLanguage.
	tSub := builder newTraitNamed: #TSub.
	tSubInheritance := builder newTraitNamed: #TSubInheritance.
	tSuper := builder newTraitNamed: #TSuper.
	tSuperInheritance := builder newTraitNamed: #TSuperInheritance.
	tTemplate := builder newTraitNamed: #TTemplate.
	tTemplateUser := builder newTraitNamed: #TTemplateUser.
	tThrownException := builder newTraitNamed: #TThrownException.
	tTrait := builder newTraitNamed: #TTrait.
	tType := builder newTraitNamed: #TType.
	tTypeAlias := builder newTraitNamed: #TTypeAlias.
	tTypedAnnotationInstance := builder newTraitNamed: #TTypedAnnotationInstance.
	tTypedAnnotationInstanceAttribute := builder newTraitNamed: #TTypedAnnotationInstanceAttribute.
	tTypedStructure := builder newTraitNamed: #TTypedStructure.
	tWithAccesses := builder newTraitNamed: #TWithAccesses.
	tWithAnnotationInstanceAttributes := builder newTraitNamed: #TWithAnnotationInstanceAttributes.
	tWithAnnotationInstances := builder newTraitNamed: #TWithAnnotationInstances.
	tWithAnnotationTypes := builder newTraitNamed: #TWithAnnotationTypes.
	tWithAttributes := builder newTraitNamed: #TWithAttributes.
	tWithCaughtExceptions := builder newTraitNamed: #TWithCaughtExceptions.
	tWithClassScope := builder newTraitNamed: #TWithClassScope.
	tWithComments := builder newTraitNamed: #TWithComments.
	tWithCompilationUnit := builder newTraitNamed: #TWithCompilationUnit.
	tWithDeclaredExceptions := builder newTraitNamed: #TWithDeclaredExceptions.
	tWithDereferencedInvocations := builder newTraitNamed: #TWithDereferencedInvocations.
	tWithEnumValues := builder newTraitNamed: #TWithEnumValues.
	tWithExceptions := builder newTraitNamed: #TWithExceptions.
	tWithFileInclude := builder newTraitNamed: #TWithFileInclude.
	tWithFiles := builder newTraitNamed: #TWithFiles.
	tWithFunctions := builder newTraitNamed: #TWithFunctions.
	tWithHeader := builder newTraitNamed: #TWithHeader.
	tWithImplicitVariables := builder newTraitNamed: #TWithImplicitVariables.
	tWithInvocations := builder newTraitNamed: #TWithInvocations.
	tWithLocalVariables := builder newTraitNamed: #TWithLocalVariables.
	tWithMethods := builder newTraitNamed: #TWithMethods.
	tWithModule := builder newTraitNamed: #TWithModule.
	tWithNamespaces := builder newTraitNamed: #TWithNamespaces.
	tWithPackages := builder newTraitNamed: #TWithPackages.
	tWithParameterizedTypeUsers := builder newTraitNamed: #TWithParameterizedTypeUsers.
	tWithParameterizedTypes := builder newTraitNamed: #TWithParameterizedTypes.
	tWithParameters := builder newTraitNamed: #TWithParameters.
	tWithReferences := builder newTraitNamed: #TWithReferences.
	tWithSignature := builder newTraitNamed: #TWithSignature.
	tWithSourceAnchor := builder newTraitNamed: #TWithSourceAnchor.
	tWithSourceLanguage := builder newTraitNamed: #TWithSourceLanguage.
	tWithSubInheritances := builder newTraitNamed: #TWithSubInheritances.
	tWithSuperInheritances := builder newTraitNamed: #TWithSuperInheritances.
	tWithTemplates := builder newTraitNamed: #TWithTemplates.
	tWithThrownExceptions := builder newTraitNamed: #TWithThrownExceptions.
	tWithTrait := builder newTraitNamed: #TWithTrait.
	tWithTypeAliases := builder newTraitNamed: #TWithTypeAliases.
	tWithTypedStructures := builder newTraitNamed: #TWithTypedStructures.
	tWithTypes := builder newTraitNamed: #TWithTypes.
	tColumn := builder newTraitNamed: #TColumn.
	tForeignKey := builder newTraitNamed: #TForeignKey.
	tFromExpression := builder newTraitNamed: #TFromExpression.
	tOtherExpression := builder newTraitNamed: #TOtherExpression.
	tPrimaryKey := builder newTraitNamed: #TPrimaryKey.
	tReferedInExpression := builder newTraitNamed: #TReferedInExpression.
	tSelectExpression := builder newTraitNamed: #TSelectExpression.
	tWhereExpression := builder newTraitNamed: #TWhereExpression.
	tWithColumns := builder newTraitNamed: #TWithColumns.
	tWithExpressionReferences := builder newTraitNamed: #TWithExpressionReferences.
	tWithFromExpressions := builder newTraitNamed: #TWithFromExpressions.
	tWithOtherExpressions := builder newTraitNamed: #TWithOtherExpressions.
	tWithSelectExpressions := builder newTraitNamed: #TWithSelectExpressions.
	tWithWhereExpressions := builder newTraitNamed: #TWithWhereExpressions.
]

{ #category : #initialization }
FmxNGTestGenerator >> generate [

	self define.
	self builder 
		cleanPackage;
		generate.
]

{ #category : #initialization }
FmxNGTestGenerator >> initialize [

	super initialize.

	builder := FamixMetamodelBuilder new.
	builder 
		prefix: self packageName;
		packageName: self packageName.

]

{ #category : #initialization }
FmxNGTestGenerator >> packageName [

	^ #FmxNGTest
]

{ #category : #initialization }
FmxNGTestGenerator >> prefix [

	^ self packageName
]
