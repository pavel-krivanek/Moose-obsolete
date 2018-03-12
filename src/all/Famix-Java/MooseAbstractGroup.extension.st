Extension { #name : #MooseAbstractGroup }

{ #category : #'*Famix-Java' }
MooseAbstractGroup >> allAnnotationInstances [
	<navigation: 'All annotation instances'>
	<package: #Java>
	^ self allWithType: FmxNGAnnotationInstance
]

{ #category : #'*Famix-Java' }
MooseAbstractGroup >> allAnnotationTypes [
	<navigation: 'All annotation types'>
	<package: #Java>
	^ self allWithType: FmxNGAnnotationType
]

{ #category : #'*Famix-Java' }
MooseAbstractGroup >> allCaughtExceptions [
	<navigation: 'All caught exceptions'>
	<package: #Java>
	^ self allWithType: FmxNGCaughtException
]

{ #category : #'*Famix-Java' }
MooseAbstractGroup >> allDeclaredExceptions [
	<navigation: 'All declared exceptions'>
	<package: #Java>
	^ self allWithType: FAMIXDeclaredException
]

{ #category : #'*Famix-Java' }
MooseAbstractGroup >> allEnumValues [
	<navigation: 'All enum values'>
	<package: #Java>
	^ self allWithType: FAMIXEnumValue 
]

{ #category : #'*Famix-Java' }
MooseAbstractGroup >> allEnums [
	<navigation: 'All enums'>
	<package: #Java>
	^ self allWithType: FAMIXEnum  
]

{ #category : #'*Famix-Java' }
MooseAbstractGroup >> allParameterTypes [
	<navigation: 'All parameter types'>
	<package: #Java>
	^ self allWithType: FmxNGParameterType
]

{ #category : #'*Famix-Java' }
MooseAbstractGroup >> allParameterizableClasses [
	<navigation: 'All parameterizable classes'>
	<package: #Java>
	^ self allWithType: FmxNGParameterizableClass
]

{ #category : #'*Famix-Java' }
MooseAbstractGroup >> allParameterizedTypes [
	<navigation: 'All parameterized types'>
	<package: #Java>
	^ self allWithType: FmxNGParameterizedType
]

{ #category : #'*Famix-Java' }
MooseAbstractGroup >> allTestClasses [
	<navigation: 'All test classes'>
	<package: #Java>
	^ self allModelClasses select: #isTestCase
]

{ #category : #'*Famix-Java' }
MooseAbstractGroup >> allThrownExceptions [
	<navigation: 'All thrown exceptions'>
	<package: #Java>
	^ self allWithType: FmxNGThrownException
]

{ #category : #'*Famix-Java' }
MooseAbstractGroup >> javaEntityNamed: aSymbol [ 
	 
	^self 
		javaEntityNamed: aSymbol 
		ifAbsent: [nil]
]

{ #category : #'*Famix-Java' }
MooseAbstractGroup >> javaEntityNamed: aMooseName ifAbsent: aBlock [
	^ self entityStorage
		at: aMooseName
		ifAbsent: [ self entityStorage at: '<Default Package>::' , aMooseName ifAbsent: aBlock ]
]
