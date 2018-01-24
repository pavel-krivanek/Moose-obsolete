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

{ #category : #comments }
FmxNGTestGenerator >> commentForTAccess [

	^ 'FAMIXAccess represents an access to a variable by a behavioural entity (for example, a function or a method). 

For example if the method foo accesses the instance variable x, there is an access with the following information:
	(i) From: aFAMIXMethod (foo)
	(ii) To: aFAMIXAttribute (x)
	
aFAMIXMethod (foo) can be accessed using the message accessor (and from)
aFAMIXAttribute (x) can be accessed using the message variable (and to). 

Furthermore it can be tagged as read or write using isWrite: aBoolean.

For each access in the source code, there is one famix access created even if it is from the same behavioral entity towards the same variable.'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTAccessible [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTAnnotationInstance [

	^ 'AnnotationInstance is an instance of an AnnotationType. It links an AnnotationType to an actual entity.

For example, the following is an annotation instance in Smalltalk.
<primitive: ''primAnyBitFromTo'' module:''LargeIntegers''>.

And the following is an AnnotationInstance in Java:
@Test(timeout = 500)

Instance Variables:
	annotatedEntity	<FAMIXEntity>
	annotationType		<FAMIXAnnotationType>'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTAnnotationInstanceAttribute [

	^ 'This models the actual value of an attribute in an AnnotationInstance.

In the following AnnotationInstance of Java, timeout is an annotation instance attribute :
@Test(timeout = 500)

Instance Variables:
	parentAnnotationInstance	<FAMIXAnnotationInstance>
	annotationTypeAttribute	<FAMIXAnnotationTypeAttribute>
	value	<Object>'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTAnnotationType [

	^ 'FAMIXAnnotationType represents the type of an annotation. In some languages, Java and C#, an annotation as an explicit type. An AnnotationType can have a container in which it resides.

Instance Variables:
	instances	<(FMMultivalueLink of: FAMIXAnnotationInstance)>
	container	<FAMIXContainerEntity>'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTAnnotationTypeAttribute [

	^ 'This models the attribute defined in a Java AnnotationType. In Java, annotation type attributes have specific syntax and use.

For example, in Java the following AnnotationType has four AnnotationTypeAttributes (id, synopsis, engineer and date are attributes).

public @interface MyAnno {
    int    id();
    String synopsis(); 
    String engineer() default "[unassigned]"; 
    String date()    default "[unimplemented]";
}

When using an annotation, an annotation instance is created that points back to the annotation type. The annotation instance has attributes that are annontation instance attributes and point back to their annotation type attributes.

Instance Variables:
	parentAnnotationType	<FAMIXAnnotationType>
	annotationAttributeInstances	<(FMMultivalueLink of: FAMIXAnnotationInstanceAttribute)>'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTAssociation [

	^ 'FAMIXAssociation is an abstract superclass for relationships between Famix named entities. It defines a polymorphic API refined by subclasses: essentially from, to, next and previous.

From and To properties are abstract at this level, but specific implementations can have multiple ends and properties. 
For example, FAMIXInheritance has:
	(i) From mapped to the subclass;
	(ii) To mapped to the superclass.
	
To adapt your code to MooseQuery, you have also to add the <source> and <target> pragmas in the selectors definition for each class inheriting FAMIXAssociation

Next and Previous properties provide an order of the appearence of these associations in code. The order is calculated within a particular relationship for example, method invocation order within a calling method (from).
For example in java, the following code
 method a() { b(); c(); }
will produce two invocation associations first from method a to method b, and second from method a to method c. These associations are bound together and can be navigated with previous and next.



'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTAttribute [

	^ 'FAMIXAttribute represents a field of a class. It is an attribute of the parent type.
'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTCaughtException [

	^ 'This is an exception that is explicitly handled by a method. For example, in Java it is an exception that appears in a catch statement.'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTComment [

	^ 'FAMIXComment represents one instance of a comment (in the sense of programming language comments) for any Famix sourced entity. The commented sourced entity is called the container in the FAMIX model.'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTCompilationUnit [

	^ 'I represent a compilation unit file. Typically a .c or .cpp file'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTDeclaredException [

	^ 'This is an exception explicitly declared as being thrown by a method.'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTDereferencedInvocation [

	^ 'Represents an invocation which function is contained in a pointer.

The function itself is typically unknown (referenced by the pointer).

It has a referencer which is the pointer variable'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTEnumValue [

	^ 'It models the values defined in an FAMIXEnum. These are attributes of enums with default values.

For example, the following Java code defines an Enum with seven EnumValues.

public enum Day {
    SUNDAY, MONDAY, TUESDAY, WEDNESDAY, 
    THURSDAY, FRIDAY, SATURDAY 
}

Instance Variables:
	parentEnum	<(MultivalueLink of: FAMIXEnum)>'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTException [

	^ 'This is the abstract representation of an Exception. It is specific to Java. It points to an exceptionClass. The class of a FAMIXException is a normal FAMIXClass.'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTFile [

	^ 'It represents a file in the file system.'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTFileAnchor [

	^ 'This offers a source anchor that connects a sourced entity to a file through a relative path stored in the fileName. In addition, the source can be further specified with a startLine and an endLine number in the file.'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTFileInclude [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTFunction [

	^ 'FAMIXFunction represents a behavioural entity in a procedural language.'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTGlobalVariable [

	^ 'FAMIXGlobalVariable represents a global variable in the source code.
'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTGlobalVariableScope [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTHeader [

	^ 'I represent a header file. Typically a .h or .hpp'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTImplicitVariable [

	^ 'FAMIXImplicitVariable represents a variable defined by the compiler in a context, such as self, super, thisContext.'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTInvocable [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTInvocation [

	^ 'FAMIXInvocation represents the invocation of a message (signature) on a receiver by a behavioural entity. 
FAMIXInvocation has:
   (i)  sender: the behavioral entity that sends the message;
   (ii) receiver: the structural entity (variable) that receives the message;
   (iii) candidates: the list of potential behavioral entities that are actually being invoked. This is particularly useful for dynamic languages.

In an invocation, From is the sender of the message and To is the list of candidates. For each invocation in the source code, there is one famix invocation created even if it is from the same behavioral entity towards the same variable and the same message. For example in smalltalk, the following code
anObject aSelector.
will produce one invocation association from current method to a variable anObject with candidate aSelector. The list of candidates will also contain all the methods defining a similar signature as aSelector. 
'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTInvocationsReceiver [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTLocalVariable [

	^ 'FAMIXLocalVariable represents a local variable in the scope of a behavioural entity.'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTMethod [

	^ 'FAMIXMethod represents a behaviour in an object-oriented language.

A FAMIXMethod is always contained in a parentType.'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTModule [

	^ 'FAMIXModule represents a that basically provides a simple scoping abstraction for a .C/.CPP/.H files.
'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTNamed [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTNamespace [

	^ 'FAMIXNamespace represents a namespace from the source language. Namespaces have semantic meaning in the language so they influence the unique name of the entity.

A namespace denotes an entity that has meaning from a language point of view. For example, in C++, there exist a concept with the same name that has no other responsibility beside providing a lexical scope for the contained classes and funcions.

When an entity is placed inside a namespace, the fully qualified name (mooseName) is affected.'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTNamespaceEntity [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTPackage [

	^ 'FAMIXPackage represents a package in the source language, meaning that it provides a means to group entities without any baring on lexical scoping. 

Java extractors map Java packages to FAMIXNamespaces. They can also mirror the same information in terms of FAMIXPackage instances.'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTPackageable [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTParameter [

	^ 'FAMIXParameter represents one parameter in a method declaration.'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTParameterizedType [

	^ 'FAMIXParameterizedType represents a type with arguments. So, it is an instantiation for the use of FAMIXParameterizableClass. It can appear as a type of an attribute, a type of a local variable, a parameter of a method, a return of a method, etc.
Example:

...
public Map<String,Collection> anAttribute;
...

Where Map<String,Collection> is the FAMIXParameterizedType of anAttribute. String and Collection are arguments. Map is the parameterizableClass.'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTParameterizedTypeUser [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTPreprocessorDefine [

	^ 'Represent a preprocessor #define statement

Knows the name of the macro defined'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTPreprocessorIfdef [

	^ 'Represent a preprocessor #ifdef/#ifndef statement

Knows the name of the macro tested and whether it is "negated" (#ifndef) or not (#ifdef)'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTReference [

	^ 'A FAMIXReference entity is created whenever one manipulates a class name as a variable. For example:
(i) if the class is passed as a parameter to a method, or
(ii) if a static method is invoked on a class.

For example, in the following Java code
method a()
{B bObject = new B();  B.aStaticMethod(); }
There is only one reference which is created when the static method aStaticMethod is invoked on class variable B. In the declaration of B objects, the class B is the type of variable b but not a FAMIXReference. And instantiation new B() is an invocation of the default constructor, and not a FAMIXReference.


Note that FAMIXReference was defined between two FAMIXContainerEntity entities. So, it used to represent dependencies between container entities that are computed from the dependencies of contained entities. For example, references between two packages can be computed from dependencies between classes of the packages.'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTReferenceable [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTScopingEntity [

	^ 'FAMIXScopingEntity represents an entity defining a scope at a global level. 

Packages and Namespaces are two different concept in terms of scoping entity. Namespaces have semantic meaning in the language so they influence the unique name of the entity, while Packages are physical entities for packaging. In Smalltalk the two are explicitly different. In C++ we have explicit Namespaces, but not so explicit Packages. In Java, we have both Namespace (what you define in your Java source), and Package (the folder structure), but they happen to overlap in naming (although one is with . and the other one is with /) so people tend to see them as packages only.'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTSourceAnchor [

	^ 'FAMIXSourceAnchor is an abstract class representing a pointer to a source. The source can be identified in multiple ways as specified by the subclasses.  The famix entity that this class is a source pointer for, is accessible via element property.'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTSourceLanguage [

	^ 'FAMIXSourceLanguage represents the programming language in which an entity is written. It is used for dispatching entity actions for specific languages. For example, formatting a source text will be performed according to the language. A project may have multiple languages. 

A source language has a name and entities that are written in this language. 
One can create a default source language for a project by not associating any entities to it. In this case, all entities that do not have specific source langauge, belong to the default source language. One can attach entities to a sourceLanguage using addSourceEntity:.'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTSub [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTSubInheritance [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTSuper [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTSuperInheritance [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTTemplate [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTTemplateUser [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTThrownException [

	^ 'This is an exception explicitly thrown by a method.'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTTrait [

	^ 'FAMIXTrait models a trait as it can be found in Pharo or PHP.'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTType [

	^ 'FAMIXType is a generic class representing a type. It has several specializations for specific kinds of types, the typical one being FAMIXClass.
A type is defined in a container (instance of FAMIXContainer). 
The container is typically a namespace (instance of FAMIXNamespace), but may also be a class (in the case of nested classes), or a method (in the case of anonymous classes).

A type can have multiple subtypes or supertypes. These are modelled by means of FAMIXInheritance instances.'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTTypeAlias [

	^ 'This entity models a typedef in C.

Instance Variables:
	aliasedType	<ProtoObject | PseudoContext>'
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTTypedAnnotationInstance [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTTypedAnnotationInstanceAttribute [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTTypedStructure [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithAccesses [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithAnnotationInstanceAttributes [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithAnnotationInstances [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithAnnotationTypes [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithAttributes [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithCaughtExceptions [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithClassScope [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithComments [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithCompilationUnit [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithDeclaredExceptions [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithDereferencedInvocations [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithEnumValues [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithExceptions [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithFileInclude [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithFiles [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithFunctions [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithHeader [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithImplicitVariables [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithInvocations [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithLocalVariables [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithMethods [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithModule [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithNamespaces [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithPackages [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithParameterizedTypeUsers [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithParameterizedTypes [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithParameters [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithReferences [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithSignature [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithSourceAnchor [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithSourceLanguage [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithSubInheritances [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithSuperInheritances [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithTemplates [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithThrownExceptions [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithTrait [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithTypeAliases [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithTypedStructures [

	^ ''
]

{ #category : #comments }
FmxNGTestGenerator >> commentForTWithTypes [

	^ ''
]

{ #category : #definition }
FmxNGTestGenerator >> defineProperties [

	((tFile property: #name type: #String)
		comment: 'Basic name of the entity, not full reference.').
	
	"FIX"
"	((tFileAnchor property: #correspondingFile type: #FmxStFile) 
		comment: 'File associated to this source anchor').
"	((tFileAnchor property: #encoding type: #String) "FIX - custom"
		comment: 'A string representing the encoding of a file').
	((tFileAnchor property: #fileName type: #String) 
		comment: 'Name of the source file').

	((tAccess property: #isWrite type: #Boolean) "FIX - custom"
		comment: 'Write access').

	((tAnnotationInstanceAttribute property: #value type: #String)
		comment: 'Actual value of the attribute used in an annotation').

	((tNamed property: #name type: #String)
		comment: 'Basic name of the entity, not full reference.').
	((tNamed property: #isStub type: #Boolean)
		comment: 'Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.').
	((tNamed property: #modifiers type: #String)
		comment: 'Generic container for language dependent modifiers.').

	((tMethod property: #timeStamp type: #String)
		comment: 'TimeStamp of the method with author and time of the last change').
	((tMethod property: #category type: #String) "FIX - custom, own trait?"
		comment: 'Category of the method').
	((tMethod property: #kind type: #String) 
		comment: 'Tag indicating a setter, getter, constant, constructor, or abstract method').
	((tMethod property: #hasClassScope type: #Boolean) 
		comment: 'True if class-side method').

	((tWithSignature property: #signature type: #String) "FIX - custom"
		comment: 'Signature of the message being sent').

	((tComment property: #content type: #String) "FIX - custom"
		comment: 'Content of the comment as a String').

]

{ #category : #definition }
FmxNGTestGenerator >> defineRelations [

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
		*-
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
		*-
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
		*-
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
		*-
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

{ #category : #definition }
FmxNGTestGenerator >> defineTraits [

	tAccess := builder newTraitNamed: #TAccess.
	tAccess comment: self commentForTAccess.
	
	tAccessible := builder newTraitNamed: #TAccessible.
	tAccessible comment: self commentForTAccessible.
	
	tAnnotationInstance := builder newTraitNamed: #TAnnotationInstance.
	tAnnotationInstance comment: self commentForTAnnotationInstance.

	tAnnotationInstanceAttribute := builder newTraitNamed: #TAnnotationInstanceAttribute.
	tAnnotationInstanceAttribute comment: self commentForTAnnotationInstanceAttribute.

	tAnnotationType := builder newTraitNamed: #TAnnotationType.
	tAnnotationType comment: self commentForTAnnotationType.

	tAnnotationTypeAttribute := builder newTraitNamed: #TAnnotationTypeAttribute.
	tAnnotationTypeAttribute comment: self commentForTAnnotationTypeAttribute.
		
	tAssociation := builder newTraitNamed: #TAssociation.
	tAssociation comment: self commentForTAssociation.

	tAttribute := builder newTraitNamed: #TAttribute.
	tAttribute comment: self commentForTAttribute.

	tCaughtException := builder newTraitNamed: #TCaughtException.
	tCaughtException comment: self commentForTCaughtException.

	tComment := builder newTraitNamed: #TComment.
	tComment comment: self commentForTComment.

	tCompilationUnit := builder newTraitNamed: #TCompilationUnit.
	tCompilationUnit comment: self commentForTCompilationUnit.

	tDeclaredException := builder newTraitNamed: #TDeclaredException.
	tDeclaredException comment: self commentForTDeclaredException.

	tDereferencedInvocation := builder newTraitNamed: #TDereferencedInvocation.
	tDereferencedInvocation comment: self commentForTDereferencedInvocation.

	tEnumValue := builder newTraitNamed: #TEnumValue.
	tEnumValue comment: self commentForTEnumValue.

	tException := builder newTraitNamed: #TException.
	tException comment: self commentForTException.

	tFile := builder newTraitNamed: #TFile.
	tFile comment: self commentForTFile.

	tFileAnchor := builder newTraitNamed: #TFileAnchor.
	tFileAnchor comment: self commentForTFileAnchor.

	tFileInclude := builder newTraitNamed: #TFileInclude.
	tFileInclude comment: self commentForTFileInclude.

	tFunction := builder newTraitNamed: #TFunction.
	tFunction comment: self commentForTFunction.

	tGlobalVariable := builder newTraitNamed: #TGlobalVariable.
	tGlobalVariable comment: self commentForTGlobalVariable.

	tGlobalVariableScope := builder newTraitNamed: #TGlobalVariableScope.
	tGlobalVariableScope comment: self commentForTGlobalVariableScope.

	tHeader := builder newTraitNamed: #THeader.
	tHeader comment: self commentForTHeader.

	tImplicitVariable := builder newTraitNamed: #TImplicitVariable.
	tImplicitVariable comment: self commentForTImplicitVariable.

	tInvocable := builder newTraitNamed: #TInvocable.
	tInvocable comment: self commentForTInvocable.

	tInvocation := builder newTraitNamed: #TInvocation.
	tInvocation comment: self commentForTInvocation.

	tInvocationsReceiver := builder newTraitNamed: #TInvocationsReceiver.
	tInvocationsReceiver comment: self commentForTInvocationsReceiver.

	tLocalVariable := builder newTraitNamed: #TLocalVariable.
	tLocalVariable comment: self commentForTLocalVariable.

	tMethod := builder newTraitNamed: #TMethod.
	tMethod comment: self commentForTMethod.

	tModule := builder newTraitNamed: #TModule.
	tModule comment: self commentForTModule.

	tNamed := builder newTraitNamed: #TNamed.
	tNamed comment: self commentForTNamed.

	tNamespace := builder newTraitNamed: #TNamespace.
	tNamespace comment: self commentForTNamespace.

	tNamespaceEntity := builder newTraitNamed: #TNamespaceEntity.
	tNamespaceEntity comment: self commentForTNamespaceEntity.

	tPackage := builder newTraitNamed: #TPackage.
	tPackage comment: self commentForTPackage.

	tPackageable := builder newTraitNamed: #TPackageable.
	tPackageable comment: self commentForTPackageable.

	tParameter := builder newTraitNamed: #TParameter.
	tParameter comment: self commentForTParameter.

	tParameterizedType := builder newTraitNamed: #TParameterizedType.
	tParameterizedType comment: self commentForTParameterizedType.

	tParameterizedTypeUser := builder newTraitNamed: #TParameterizedTypeUser.
	tParameterizedTypeUser comment: self commentForTParameterizedTypeUser.

	tPreprocessorDefine := builder newTraitNamed: #TPreprocessorDefine.
	tPreprocessorDefine comment: self commentForTPreprocessorDefine.

	tPreprocessorIfdef := builder newTraitNamed: #TPreprocessorIfdef.
	tPreprocessorIfdef comment: self commentForTPreprocessorIfdef.

	tReference := builder newTraitNamed: #TReference.
	tReference comment: self commentForTReference.

	tReferenceable := builder newTraitNamed: #TReferenceable.
	tReferenceable comment: self commentForTReferenceable.

	tScopingEntity := builder newTraitNamed: #TScopingEntity.
	tScopingEntity comment: self commentForTScopingEntity.

	tSourceAnchor := builder newTraitNamed: #TSourceAnchor.
	tSourceAnchor comment: self commentForTSourceAnchor.

	tSourceLanguage := builder newTraitNamed: #TSourceLanguage.
	tSourceLanguage comment: self commentForTSourceLanguage.

	tSub := builder newTraitNamed: #TSub.
	tSub comment: self commentForTSub.

	tSubInheritance := builder newTraitNamed: #TSubInheritance.
	tSubInheritance comment: self commentForTSubInheritance.

	tSuper := builder newTraitNamed: #TSuper.
	tSuper comment: self commentForTSuper.

	tSuperInheritance := builder newTraitNamed: #TSuperInheritance.
	tSuperInheritance comment: self commentForTSuperInheritance.

	tTemplate := builder newTraitNamed: #TTemplate.
	tTemplate comment: self commentForTTemplate.

	tTemplateUser := builder newTraitNamed: #TTemplateUser.
	tTemplateUser comment: self commentForTTemplateUser.

	tThrownException := builder newTraitNamed: #TThrownException.
	tThrownException comment: self commentForTThrownException.

	tTrait := builder newTraitNamed: #TTrait.
	tTrait comment: self commentForTTrait.

	tType := builder newTraitNamed: #TType.
	tType comment: self commentForTType.

	tTypeAlias := builder newTraitNamed: #TTypeAlias.
	tTypeAlias comment: self commentForTTypeAlias.

	tTypedAnnotationInstance := builder newTraitNamed: #TTypedAnnotationInstance.
	tTypedAnnotationInstance comment: self commentForTTypedAnnotationInstance.

	tTypedAnnotationInstanceAttribute := builder newTraitNamed: #TTypedAnnotationInstanceAttribute.
	tTypedAnnotationInstanceAttribute comment: self commentForTTypedAnnotationInstanceAttribute.

	tTypedStructure := builder newTraitNamed: #TTypedStructure.
	tTypedStructure comment: self commentForTTypedStructure.

	tWithAccesses := builder newTraitNamed: #TWithAccesses.
	tWithAccesses comment: self commentForTWithAccesses.

	tWithAnnotationInstanceAttributes := builder newTraitNamed: #TWithAnnotationInstanceAttributes.
	tWithAnnotationInstanceAttributes comment: self commentForTWithAnnotationInstanceAttributes.

	tWithAnnotationInstances := builder newTraitNamed: #TWithAnnotationInstances.
	tWithAnnotationInstances comment: self commentForTWithAnnotationInstances.

	tWithAnnotationTypes := builder newTraitNamed: #TWithAnnotationTypes.
	tWithAnnotationTypes comment: self commentForTWithAnnotationTypes.

	tWithAttributes := builder newTraitNamed: #TWithAttributes.
	tWithAttributes comment: self commentForTWithAttributes.

	tWithCaughtExceptions := builder newTraitNamed: #TWithCaughtExceptions.
	tWithCaughtExceptions comment: self commentForTWithCaughtExceptions.

	tWithClassScope := builder newTraitNamed: #TWithClassScope.
	tWithClassScope comment: self commentForTWithClassScope.

	tWithComments := builder newTraitNamed: #TWithComments.
	tWithComments comment: self commentForTWithComments.

	tWithCompilationUnit := builder newTraitNamed: #TWithCompilationUnit.
	tWithCompilationUnit comment: self commentForTWithCompilationUnit.

	tWithDeclaredExceptions := builder newTraitNamed: #TWithDeclaredExceptions.
	tWithDeclaredExceptions comment: self commentForTWithDeclaredExceptions.

	tWithDereferencedInvocations := builder newTraitNamed: #TWithDereferencedInvocations.
	tWithDereferencedInvocations comment: self commentForTWithDereferencedInvocations.

	tWithEnumValues := builder newTraitNamed: #TWithEnumValues.
	tWithEnumValues comment: self commentForTWithEnumValues.

	tWithExceptions := builder newTraitNamed: #TWithExceptions.
	tWithExceptions comment: self commentForTWithExceptions.

	tWithFileInclude := builder newTraitNamed: #TWithFileInclude.
	tWithFileInclude comment: self commentForTWithFileInclude.

	tWithFiles := builder newTraitNamed: #TWithFiles.
	tWithFiles comment: self commentForTWithFiles.

	tWithFunctions := builder newTraitNamed: #TWithFunctions.
	tWithFunctions comment: self commentForTWithFunctions.

	tWithHeader := builder newTraitNamed: #TWithHeader.
	tWithHeader comment: self commentForTWithHeader.

	tWithImplicitVariables := builder newTraitNamed: #TWithImplicitVariables.
	tWithImplicitVariables comment: self commentForTWithImplicitVariables.

	tWithInvocations := builder newTraitNamed: #TWithInvocations.
	tWithInvocations comment: self commentForTWithInvocations.

	tWithLocalVariables := builder newTraitNamed: #TWithLocalVariables.
	tWithLocalVariables comment: self commentForTWithLocalVariables.

	tWithMethods := builder newTraitNamed: #TWithMethods.
	tWithMethods comment: self commentForTWithMethods.

	tWithModule := builder newTraitNamed: #TWithModule.
	tWithModule comment: self commentForTWithModule.

	tWithNamespaces := builder newTraitNamed: #TWithNamespaces.
	tWithNamespaces comment: self commentForTWithNamespaces.

	tWithPackages := builder newTraitNamed: #TWithPackages.
	tWithPackages comment: self commentForTWithPackages.

	tWithParameterizedTypeUsers := builder newTraitNamed: #TWithParameterizedTypeUsers.
	tWithParameterizedTypeUsers comment: self commentForTWithParameterizedTypeUsers.

	tWithParameterizedTypes := builder newTraitNamed: #TWithParameterizedTypes.
	tWithParameterizedTypes comment: self commentForTWithParameterizedTypes.

	tWithParameters := builder newTraitNamed: #TWithParameters.
	tWithParameters comment: self commentForTWithParameters.

	tWithReferences := builder newTraitNamed: #TWithReferences.
	tWithReferences comment: self commentForTWithReferences.

	tWithSignature := builder newTraitNamed: #TWithSignature.
	tWithSignature comment: self commentForTWithSignature.

	tWithSourceAnchor := builder newTraitNamed: #TWithSourceAnchor.
	tWithSourceAnchor comment: self commentForTWithSourceAnchor.

	tWithSourceLanguage := builder newTraitNamed: #TWithSourceLanguage.
	tWithSourceLanguage comment: self commentForTWithSourceLanguage.

	tWithSubInheritances := builder newTraitNamed: #TWithSubInheritances.
	tWithSubInheritances comment: self commentForTWithSubInheritances.

	tWithSuperInheritances := builder newTraitNamed: #TWithSuperInheritances.
	tWithSuperInheritances comment: self commentForTWithSuperInheritances.

	tWithTemplates := builder newTraitNamed: #TWithTemplates.
	tWithTemplates comment: self commentForTWithTemplates.

	tWithThrownExceptions := builder newTraitNamed: #TWithThrownExceptions.
	tWithThrownExceptions comment: self commentForTWithThrownExceptions.

	tWithTrait := builder newTraitNamed: #TWithTrait.
	tWithTrait comment: self commentForTWithTrait.

	tWithTypeAliases := builder newTraitNamed: #TWithTypeAliases.
	tWithTypeAliases comment: self commentForTWithTypeAliases.

	tWithTypedStructures := builder newTraitNamed: #TWithTypedStructures.
	tWithTypedStructures comment: self commentForTWithTypedStructures.

	tWithTypes := builder newTraitNamed: #TWithTypes.
	tWithTypes comment: self commentForTWithTypes.


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

	^ #FmxSt
]

{ #category : #initialization }
FmxNGTestGenerator >> prefix [

	^ self packageName
]
