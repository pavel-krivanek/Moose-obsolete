Class {
	#name : #MooseQueryTest,
	#superclass : #TestCase,
	#instVars : [
		'model',
		'class1',
		'class2',
		'inh',
		'method1',
		'var2',
		'access',
		'method2',
		'method3',
		'inv1',
		'inv2',
		'package1',
		'inv3',
		'package2',
		'var1',
		'acc1',
		'namespace',
		'var3',
		'ref1',
		'methodExt'
	],
	#category : #'Moose-Query-Test'
}

{ #category : #accessing }
MooseQueryTest >> model [
	^ model
]

{ #category : #running }
MooseQueryTest >> setUp [
	super setUp.
	model := MooseModel new.
	package1 := FAMIXPackage new name: 'package1' ; mooseModel: model.
	package2 := FAMIXPackage new name: 'package2' ; mooseModel: model.
	namespace := FAMIXNamespace new name: 'Smalltalk' ; mooseModel: model.
	class1 := FAMIXClass new name: 'class1' ; parentPackage: package1 ; container: namespace ; mooseModel: model.
	class2 := FAMIXClass new name: 'class2' ; parentPackage: package2 ; mooseModel: model.
	inh := FAMIXInheritance new subclass: class1 ; superclass: class2 ; mooseModel: model.
	method1 := FAMIXMethod new name: 'method1' ; parentType: class1 ; mooseModel: model.
	method2 := FAMIXMethod new name: 'method2' ; parentType: class2 ; mooseModel: model.
	method3 := FAMIXMethod new name: 'method3' ; parentType: class2 ; mooseModel: model.
	methodExt := FAMIXMethod new name: 'methodExt' ; parentType: class2 ; parentPackage: package1 ; mooseModel: model.
	var1 := FAMIXAttribute new name: 'var1' ; parentType: class2 ; declaredType: class1 ; mooseModel: model.
	var2 := FAMIXAttribute new name: 'var2' ; parentType: class2 ; mooseModel: model.
	var3 := FAMIXLocalVariable new name: 'var3' ; parentBehaviouralEntity: method2 ; declaredType: class1 ; mooseModel: model.
	access := FAMIXAccess new accessor: method1 ; variable: var2 ; mooseModel: model.
	acc1 := FAMIXAccess new accessor: method2 ; variable: var1 ; mooseModel: model.
	inv1 := FAMIXInvocation new sender: method1 ; addCandidate: method2 ; receiver: var2 ; mooseModel: model.
	inv2 := FAMIXInvocation new sender: method2 ; addCandidate: method2 ; receiver: var2 ; mooseModel: model.
	inv3 := FAMIXInvocation new sender: method3 ; addCandidate: method2 ; receiver: var2 ; mooseModel: model.
	ref1 := FAMIXReference new source: method1 ; target: class2 ; mooseModel: model.
]

{ #category : #tests }
MooseQueryTest >> testAllAtScope [
	| package3 |
	self assertCollection: (class1 allAtScope: FmxNGTClass) hasSameElements: {class1}.
	self assertCollection: (class1 allAtScope: FmxNGTType) hasSameElements: {class1}.
	self assertCollection: (class1 allAtScope: FmxNGTPackage) hasSameElements: {package1}.
	self
		assertCollection: (class1 allAtScope: FmxNGTScopingEntity)
		hasSameElements:
			{namespace.
			package1}.
	package3 := FAMIXPackage new
		name: 'package3';
		mooseModel: model.
	package1 parentPackage: package3.
	self
		assertCollection: (class1 allAtScope: FmxNGTPackage)
		hasSameElements:
			{package1.
			package3}.
	self
		assertCollection: (class1 allAtScope: FmxNGTScopingEntity)
		hasSameElements:
			{namespace.
			package1.
			package3}
]

{ #category : #tests }
MooseQueryTest >> testAllChildren [
	self assert: package2 allChildren size equals: 7.
	self assert: class2 allChildren size equals: 6.
	self assert: method2 allChildren size equals: 1
]

{ #category : #tests }
MooseQueryTest >> testAllIncoming [
	self assert: method2 queryAllIncoming size equals: 3.
	self assert: class2 queryAllIncoming size equals: 7
]

{ #category : #tests }
MooseQueryTest >> testAllOutgoing [
	self assert: method2 queryAllOutgoing size equals: 2.
	self assert: class2 queryAllOutgoing size equals: 3
]

{ #category : #tests }
MooseQueryTest >> testAllParents [
	self assert: package2 allParents size equals: 0.
	self assert: class2 allParents size equals: 1.
	self assert: method2 allParents size equals: 2.
	self assert: var2 allParents size equals: 2
]

{ #category : #tests }
MooseQueryTest >> testAllToScope [
	| class3 |
	self assertCollection: (class1 allToScope: FmxNGTMethod) hasSameElements: {method1}.
	self
		assertCollection: (class2 allToScope: FmxNGTAttribute)
		hasSameElements:
			{var1.
			var2}.
	self assertCollection: (package1 allToScope: FmxNGTClass) hasSameElements: {class1}.
	class3 := FAMIXClass new
		name: 'class3';
		container: class1;
		mooseModel: model.
	self
		assertCollection: (class1 allToScope: FmxNGTClass)
		hasSameElements:
			{class1.
			class3}.
	self
		assertCollection: (package1 allToScope: FmxNGTClass)
		hasSameElements:
			{class1.
			class3}
]

{ #category : #tests }
MooseQueryTest >> testAllWithScope [
	| package3 class3 |
	self assertCollection: (class1 allWithScope: FmxNGTMethod) hasSameElements: {method1}.
	"self assertCollection: (class1 allWithScope: FmxNGTClass) hasSameElements: {class1}."
	self assertCollection: (class1 allWithScope: FmxNGTType) hasSameElements: {class1}.
	self assertCollection: (class1 allWithScope: FmxNGTPackage) hasSameElements: {package1}.
	self
		assertCollection: (class1 allWithScope: FmxNGTScopingEntity)
		hasSameElements:
			{package1.
			namespace}.
	package3 := FAMIXPackage new
		name: 'package3';
		mooseModel: model.
	package1 parentPackage: package3.
	class3 := FAMIXClass new
		name: 'class3';
		container: class1;
		mooseModel: model.
	self assertCollection: (class1 allWithScope: FmxNGTMethod) hasSameElements: {method1}.
	"self
		assertCollection: (class1 allWithScope: FmxNGTClass)
		hasSameElements:
			{class1.
			class3}."
	self
		assertCollection: (class1 allWithScope: FmxNGTType)
		hasSameElements:
			{class1.
			class3}.
	self
		assertCollection: (class1 allWithScope: FmxNGTPackage)
		hasSameElements:
			{package1.
			package3}.
	"self
		assertCollection: (class1 allWithScope: FmxNGTScopingEntity)
		hasSameElements:
			{package1.
			package3.
			namespace}"
]

{ #category : #tests }
MooseQueryTest >> testAtScope [
	self assertCollection: (class1 atScope: FAMIXClass) hasSameElements: {class1}.
	self assertCollection: (class1 atScope: FmxNGTType) hasSameElements: {class1}.
	self assertCollection: (class1 atScope: FmxNGTPackage) hasSameElements: {package1}.
	self
		assertCollection: (class1 atScope: FmxNGTScopingEntity)
		hasSameElements:
			{namespace.
			package1}
]

{ #category : #tests }
MooseQueryTest >> testBelongsToMethod [
	self assert: class1 class belongsToMethod isNil.
	self assert: method1 class belongsToMethod isNotNil.
]

{ #category : #tests }
MooseQueryTest >> testChildren [
	self assert: package2 children size equals: 1.
	self assert: package2 children anyOne equals: class2.
	self assert: class1 children size equals: 1.
	self assert: class1 children anyOne equals: method1.
]

{ #category : #tests }
MooseQueryTest >> testChildrenSelectors [
	self
		assertCollection: class1 childrenSelectors
		hasSameElements: #(#functions #types #attributes #methods #definedAnnotationTypes #annotationInstances #sourceAnchor)
]

{ #category : #tests }
MooseQueryTest >> testExplicitDirectionQueryEquivalentToQueryWithDirectionSymbol [
	"queryIncoming: is equivalent to query: #in with:"

	self
		assert: (method1 queryIncoming: FAMIXInvocation)
		equals: (method1 query: #in with: FAMIXInvocation).
	self
		assert: (class2 queryIncoming: FAMIXInvocation)
		equals: (class2 query: #in with: FAMIXInvocation).
	"queryOutgoing: is equivalent to query: #out with:"
	self
		assert: (method1 queryOutgoing: FAMIXInvocation)
		equals: (method1 query: #out with: FAMIXInvocation).
	self
		assert: (class2 queryOutgoing: FAMIXInvocation)
		equals: (class2 query: #out with: FAMIXInvocation)
]

{ #category : #tests }
MooseQueryTest >> testIncomingAssociationTypes [
	self assert: var2 incomingAssociationTypes equals: {FmxNGTAccess}.
	self
		assertCollection: (class1 incomingAssociationTypes collect: #name) sorted
		equals:
			{#FmxNGTSuperInheritance.
			#FmxNGTReference.
			#FmxNGTTraitUsage} sorted.
	self assert: method1 incomingAssociationTypes equals: {FmxNGTInvocation}

]

{ #category : #tests }
MooseQueryTest >> testIncomingInvocation [
	"queryIncoming: is equivalent to query: #in with:"

	self assert: (method2 queryIncoming: FmxNGTInvocation) size equals: 3.
	self assert: (method2 query: #in with: FmxNGTInvocation) size equals: 3.
	self assert: (class2 queryIncoming: FmxNGTInvocation) size equals: 3.
	self assert: (class2 query: #in with: FmxNGTInvocation) size equals: 3
]

{ #category : #tests }
MooseQueryTest >> testIncomingInvocationAtScope [
	self
		assert: ((method2 queryIncoming: FmxNGTInvocation) atScope: FAMIXPackage) size
		equals: 2.
	self
		assert: ((class2 queryIncoming: FmxNGTInvocation) atScope: FAMIXPackage) size
		equals: 2
]

{ #category : #tests }
MooseQueryTest >> testOutgoingAccessAtScope [
	self assert: ((method1 queryOutgoing: FmxNGTAccess) atScope: FAMIXPackage) size equals: 1.
	self
		assert: ((method1 queryOutgoing: FmxNGTAccess) atScope: FAMIXPackage) storage first
		equals: package2
]

{ #category : #tests }
MooseQueryTest >> testOutgoingAccessesWithANamespaceInANamespace [
	"queryOutgoing: is equivalent to query: #out with:"

	| namespaceContainer |
	namespaceContainer := FAMIXNamespace new
		name: 'Test';
		mooseModel: model;
		addChildScope: namespace.
	self assert: (namespaceContainer query: #out with: FmxNGTAccess) size equals: 1
]

{ #category : #tests }
MooseQueryTest >> testOutgoingAssociationTypes [
	self assert: class1 outgoingAssociationTypes asSet equals: {FmxNGTSubInheritance} asSet.
	self
		assert: method1 outgoingAssociationTypes asSet
		equals:
			{FmxNGTInvocation.
			FmxNGTReference.
			FmxNGTAccess} asSet
]

{ #category : #tests }
MooseQueryTest >> testOutgoingInvocation [
"queryOutgoing: is equivalent to query: #out with:"
	self assert: (method1 queryOutgoing: FmxNGTInvocation) size equals: 1.
	self assert: (method1 query: #out with: FmxNGTInvocation) size equals: 1.
	self assert: (class2 queryOutgoing: FmxNGTInvocation) size equals: 2.
	self assert: (class2 query: #out with: FmxNGTInvocation) size equals: 2.
]

{ #category : #tests }
MooseQueryTest >> testOutgoingInvocationAtScope [

	self assert: ((method2 queryOutgoing: FmxNGTInvocation) atScope: FAMIXPackage) size equals: 1.
	self assert: ((class2 queryOutgoing: FmxNGTInvocation) atScope: FAMIXPackage) size equals: 1.

]

{ #category : #tests }
MooseQueryTest >> testOutgoingInvocationWithin [
	self assert: ((method1 queryOutgoing: FmxNGTInvocation) within: class2) size equals: 1.

]

{ #category : #tests }
MooseQueryTest >> testParents [
	self assert: class2 parents size equals: 1.
	self assert: class2 parents anyOne equals: package2.
	self assert: method1 parents size equals: 1.
	self assert: method1 parents anyOne equals: class1.
]

{ #category : #tests }
MooseQueryTest >> testQueryWith [
"queryIncoming: is equivalent to query: #in with:"
	self assert: (package1 query: #out with: FmxNGTInvocation) size equals: 1.
]

{ #category : #tests }
MooseQueryTest >> testToScope [
	self assert: (class1 toScope: FAMIXMethod) equals: {method1}.
	self
		assertCollection: (class2 toScope: FAMIXAttribute) asSet
		hasSameElements:
			{var1.
			var2}.
	self
		assertCollection: (package1 toScope: FAMIXMethod)
		hasSameElements:
			{method1.
			methodExt}
]

{ #category : #tests }
MooseQueryTest >> testWithScope [
	self assertCollection: (class1 withScope: FmxNGTMethod) hasSameElements: {method1}.
	self
		assertCollection: (class2 toScope: FmxNGTAttribute)
		hasSameElements:
			{var1.
			var2}.
	self
		assertCollection: (package1 toScope: FmxNGTMethod)
		hasSameElements:
			{method1.
			methodExt}.
	self assertCollection: (class1 withScope: FmxNGTClass) hasSameElements: {class1}.
	self assertCollection: (class1 withScope: FmxNGTType) hasSameElements: {class1}.
	self assertCollection: (class1 withScope: FmxNGTPackage) hasSameElements: {package1}.
	self
		assertCollection: (class1 withScope: FmxNGTScopingEntity)
		hasSameElements:
			{package1.
			namespace}
]

{ #category : #tests }
MooseQueryTest >> testWithSpecializedAssociation [
	"The goal of this test is to check that MooseQuery is also able to query specialized associations."

	| invoSpecialized result |
	invoSpecialized := MooseQueryMockSpecializedInvocation new
		sender: method1;
		addCandidate: method2;
		receiver: var2;
		mooseModel: model.
	result := method1 query: #out with: MooseQueryMockSpecializedInvocation.
	self assert: result size equals: 1.
	self assert: result anyOne equals: invoSpecialized
]
