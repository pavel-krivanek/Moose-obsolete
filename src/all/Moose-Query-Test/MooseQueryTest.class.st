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
	model := MooseModel new.
	package1 := FmxNGPackage new name: 'package1' ; mooseModel: model.
	package2 := FmxNGPackage new name: 'package2' ; mooseModel: model.
	namespace := FmxNGNamespace new name: 'Smalltalk' ; mooseModel: model.
	class1 := FmxNGClass new name: 'class1' ; parentPackage: package1 ; container: namespace ; mooseModel: model.
	class2 := FmxNGClass new name: 'class2' ; parentPackage: package2 ; mooseModel: model.
	inh := FmxNGInheritance new subclass: class1 ; superclass: class2 ; mooseModel: model.
	method1 := FmxNGMethod new name: 'method1' ; parentType: class1 ; mooseModel: model.
	method2 := FmxNGMethod new name: 'method2' ; parentType: class2 ; mooseModel: model.
	method3 := FmxNGMethod new name: 'method3' ; parentType: class2 ; mooseModel: model.
	methodExt := FmxNGMethod new name: 'methodExt' ; parentType: class2 ; parentPackage: package1 ; mooseModel: model.
	var1 := FmxNGAttribute new name: 'var1' ; parentType: class2 ; declaredType: class1 ; mooseModel: model.
	var2 := FmxNGAttribute new name: 'var2' ; parentType: class2 ; mooseModel: model.
	var3 := FmxNGLocalVariable new name: 'var3' ; parentBehaviouralEntity: method2 ; declaredType: class1 ; mooseModel: model.
	access := FmxNGAccess new accessor: method1 ; variable: var2 ; mooseModel: model.
	acc1 := FmxNGAccess new accessor: method2 ; variable: var1 ; mooseModel: model.
	inv1 := FmxNGInvocation new sender: method1 ; addCandidate: method2 ; receiver: var2 ; mooseModel: model.
	inv2 := FmxNGInvocation new sender: method2 ; addCandidate: method2 ; receiver: var2 ; mooseModel: model.
	inv3 := FmxNGInvocation new sender: method3 ; addCandidate: method2 ; receiver: var2 ; mooseModel: model.
	ref1 := FmxNGReference new source: method1 ; target: class2 ; mooseModel: model.
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
MooseQueryTest >> testAtScope [
	self assert: (class1 atScope: FmxNGClass) equals: {class1}.
	self assert: (class1 atScope: FmxNGType) equals: {class1}.
	self assert: (class1 atScope: FmxNGPackage) equals: {package1}.
	self
		assert: (class1 atScope: FmxNGScopingEntity)
		equals:
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
	self assert: class1 childrenSelectors asSet equals: #(#functions #types #attributes #methods #definedAnnotationTypes #annotationInstances #sourceAnchor) asSet
]

{ #category : #tests }
MooseQueryTest >> testExplicitDirectionQueryEquivalentToQueryWithDirectionSymbol [
	"queryIncoming: is equivalent to query: #in with:"

	self
		assert: (method1 queryIncoming: FmxNGInvocation)
		equals: (method1 query: #in with: FmxNGInvocation).
	self
		assert: (class2 queryIncoming: FmxNGInvocation)
		equals: (class2 query: #in with: FmxNGInvocation).
	"queryOutgoing: is equivalent to query: #out with:"
	self
		assert: (method1 queryOutgoing: FmxNGInvocation)
		equals: (method1 query: #out with: FmxNGInvocation).
	self
		assert: (class2 queryOutgoing: FmxNGInvocation)
		equals: (class2 query: #out with: FmxNGInvocation)
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
		assert: ((method2 queryIncoming: FmxNGTInvocation) atScope: FmxNGPackage) size
		equals: 2.
	self
		assert: ((class2 queryIncoming: FmxNGTInvocation) atScope: FmxNGPackage) size
		equals: 2
]

{ #category : #tests }
MooseQueryTest >> testOutgoingAccessAtScope [
	self assert: ((method1 queryOutgoing: FmxNGTAccess) atScope: FmxNGPackage) size equals: 1.
	self
		assert: ((method1 queryOutgoing: FmxNGTAccess) atScope: FmxNGPackage) storage first
		equals: package2
]

{ #category : #tests }
MooseQueryTest >> testOutgoingAccessesWithANamespaceInANamespace [
	"queryOutgoing: is equivalent to query: #out with:"

	| namespaceContainer |
	namespaceContainer := FmxNGNamespace new
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

	self assert: ((method2 queryOutgoing: FmxNGTInvocation) atScope: FmxNGPackage) size equals: 1.
	self assert: ((class2 queryOutgoing: FmxNGTInvocation) atScope: FmxNGPackage) size equals: 1.

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
	self assert: (class1 toScope: FmxNGMethod) equals: {method1}.
	self
		assert: (class2 toScope: FmxNGAttribute) asSet
		equals:
			{var1.
			var2} asSet.
	self
		assert: (package1 toScope: FmxNGMethod)
		equals:
			{method1.
			methodExt}
]

{ #category : #tests }
MooseQueryTest >> testWithScope [
	| result |
	result := class1 withScope: FmxNGTMethod.
	self assert: result size equals: 1.
	self assert: (result includes: method1).
	result := class2 toScope: FmxNGTAttribute.
	self assert: result size equals: 2.
	self assert: (result includes: var1).
	self assert: (result includes: var2).
	result := package1 toScope: FmxNGTMethod.
	self assert: result size equals: 2.
	self assert: (result includes: method1).
	self assert: (result includes: methodExt).
	result := class1 withScope: FmxNGTType. "should be replaced with FmxNGTClass"
	self assert: result size equals: 1.
	self assert: (result includes: class1).	
	result := class1 withScope: FmxNGTType.
	self assert: result size equals: 1.
	self assert: (result includes: class1).
	result := class1 withScope: FmxNGTPackage.
	self assert: result size equals: 1.
	self assert: (result includes: package1).
	"result := class1 withScope: FmxNGTScopingEntity.
	self assert: result size equals: 2.
	self assert: (result includes: package1).
	self assert: (result includes: namespace)"
]
