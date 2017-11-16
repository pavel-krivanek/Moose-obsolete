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
	#category : 'Moose-Query-Test'
}

{ #category : #accessing }
MooseQueryTest >> model [
	^ model
]

{ #category : #running }
MooseQueryTest >> setUp [
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
MooseQueryTest >> testAtScope [
	self assert: (class1 atScope: FAMIXClass) equals: {class1}.
	self assert: (class1 atScope: FAMIXType) equals: {class1}.
	self assert: (class1 atScope: FAMIXPackage) equals: {package1}.
	self
		assert: (class1 atScope: FAMIXScopingEntity)
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
MooseQueryTest >> testChildrenSelectors [
	self assert: class1 childrenSelectors asSet equals: #(#functions #types #attributes #methods #definedAnnotationTypes #annotationInstances #sourceAnchor) asSet
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
	self assert: var2 incomingAssociationTypes equals: {FAMIXAccess}.
	self
		assert: class1 incomingAssociationTypes asSet
		equals:
			{FAMIXInheritance.
			FAMIXReference.
			FAMIXTraitUsage} asSet.
	self assert: method1 incomingAssociationTypes equals: {FAMIXInvocation}
]

{ #category : #tests }
MooseQueryTest >> testIncomingInvocation [
	"queryIncoming: is equivalent to query: #in with:"

	self assert: (method2 queryIncoming: FAMIXInvocation) size equals: 3.
	self assert: (method2 query: #in with: FAMIXInvocation) size equals: 3.
	self assert: (class2 queryIncoming: FAMIXInvocation) size equals: 3.
	self assert: (class2 query: #in with: FAMIXInvocation) size equals: 3
]

{ #category : #tests }
MooseQueryTest >> testIncomingInvocationAtScope [
	self
		assert: ((method2 queryIncoming: FAMIXInvocation) atScope: FAMIXPackage) size
		equals: 2.
	self
		assert: ((class2 queryIncoming: FAMIXInvocation) atScope: FAMIXPackage) size
		equals: 2
]

{ #category : #tests }
MooseQueryTest >> testOutgoingAccessAtScope [
	self assert: ((method1 queryOutgoing: FAMIXAccess) atScope: FAMIXPackage) size equals: 1.
	self
		assert: ((method1 queryOutgoing: FAMIXAccess) atScope: FAMIXPackage) storage first
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
	self assert: (namespaceContainer query: #out with: FAMIXAccess) size equals: 1
]

{ #category : #tests }
MooseQueryTest >> testOutgoingAssociationTypes [
	self assert: class1 outgoingAssociationTypes asSet equals: {FAMIXInheritance} asSet.
	self
		assert: method1 outgoingAssociationTypes asSet
		equals:
			{FAMIXInvocation.
			FAMIXReference.
			FAMIXAccess} asSet
]

{ #category : #tests }
MooseQueryTest >> testOutgoingInvocation [
"queryOutgoing: is equivalent to query: #out with:"
	self assert: (method1 queryOutgoing: FAMIXInvocation) size equals: 1.
	self assert: (method1 query: #out with: FAMIXInvocation) size equals: 1.
	self assert: (class2 queryOutgoing: FAMIXInvocation) size equals: 2.
	self assert: (class2 query: #out with: FAMIXInvocation) size equals: 2.
]

{ #category : #tests }
MooseQueryTest >> testOutgoingInvocationAtScope [

	self assert: ((method2 queryOutgoing: FAMIXInvocation) atScope: FAMIXPackage) size equals: 1.
	self assert: ((class2 queryOutgoing: FAMIXInvocation) atScope: FAMIXPackage) size equals: 1.

]

{ #category : #tests }
MooseQueryTest >> testOutgoingInvocationWithin [
	self assert: ((method1 queryOutgoing: FAMIXInvocation) within: class2) size equals: 1.

]

{ #category : #tests }
MooseQueryTest >> testQueryWith [
"queryIncoming: is equivalent to query: #in with:"
	self assert: (package1 query: #out with: FAMIXInvocation) size equals: 1.
]

{ #category : #tests }
MooseQueryTest >> testToScope [
	self assert: (class1 toScope: FAMIXMethod) equals: {method1}.
	self
		assert: (class2 toScope: FAMIXAttribute) asSet
		equals:
			{var1.
			var2} asSet.
	self
		assert: (package1 toScope: FAMIXMethod)
		equals:
			{method1.
			methodExt}
]

{ #category : #tests }
MooseQueryTest >> testWithScope [
	| result |
	result := class1 withScope: FAMIXMethod.
	self assert: result size equals: 1.
	self assert: (result includes: method1).
	result := class2 toScope: FAMIXAttribute.
	self assert: result size equals: 2.
	self assert: (result includes: var1).
	self assert: (result includes: var2).
	result := package1 toScope: FAMIXMethod.
	self assert: result size equals: 2.
	self assert: (result includes: method1).
	self assert: (result includes: methodExt).
	result := class1 withScope: FAMIXClass.
	self assert: result size equals: 1.
	self assert: (result includes: class1).
	result := class1 withScope: FAMIXType.
	self assert: result size equals: 1.
	self assert: (result includes: class1).
	result := class1 withScope: FAMIXPackage.
	self assert: result size equals: 1.
	self assert: (result includes: package1).
	result := class1 withScope: FAMIXScopingEntity.
	self assert: result size equals: 2.
	self assert: (result includes: package1).
	self assert: (result includes: namespace)
]
