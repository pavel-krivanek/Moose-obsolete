Class {
	#name : #MooseQueryComparedToMooseChefTest,
	#superclass : #MooseQueryTest,
	#category : 'Moose-Query-Test'
}

{ #category : #tests }
MooseQueryComparedToMooseChefTest >> testIncomingAccesses [
	self
		assert: (package2 queryIncoming: FAMIXAccess) asSet
		equals:
			(package2
				createIncomingQueryResultWith: (package2 classes flatCollect: [ :c | c queryIncomingAccesses ]))
				asSet.
	self
		assert: (namespace queryIncoming: FAMIXAccess) asSet
		equals:
			(namespace
				createIncomingQueryResultWith: (namespace classes flatCollect: [ :c | c queryIncomingAccesses ]))
				asSet.
	self
		assert: (class2 queryIncoming: FAMIXAccess) asSet
		equals:
			(class2
				createIncomingQueryResultWith: (class2 attributes flatCollect: [ :each | each incomingAccesses ]))
				asSet.
	self
		assert: (method2 queryIncoming: FAMIXAccess) asSet
		equals:
			(method2
				createIncomingQueryResultWith:
					((method2 parameters flatCollect: #incomingAccesses) asOrderedCollection
						addAll: (method2 localVariables flatCollect: #incomingAccesses);
						yourself)) asSet.
	self assert: (var3 queryIncoming: FAMIXAccess) asSet equals: var3 incomingAccesses asSet
]

{ #category : #tests }
MooseQueryComparedToMooseChefTest >> testIncomingInheritances [
	self
		assert: (class2 queryIncoming: FAMIXInheritance) asSet
		equals: (class2 createIncomingQueryResultWith: class2 subInheritances) asSet.
	self
		assert: (package2 queryIncoming: FAMIXInheritance) asSet
		equals: (package2 createIncomingQueryResultWith: (package2 classes flatCollect: [ :c | c subInheritances ])) asSet.
	self
		assert: (namespace queryIncoming: FAMIXInheritance) asSet
		equals: (namespace createIncomingQueryResultWith: (namespace classes flatCollect: [ :c | c subInheritances ])) asSet.
	self assert: (method2 queryIncoming: FAMIXInheritance) asSet equals: Array empty asSet
]

{ #category : #tests }
MooseQueryComparedToMooseChefTest >> testIncomingInvocations [
	"queryIncoming: is equivalent to query: #in with:"

	self
		assert: (method2 queryIncoming: FAMIXInvocation) asSet
		equals: (method2 createIncomingQueryResultWith: method2 incomingInvocations) asSet.
	self
		assert: (class2 queryIncoming: FAMIXInvocation) asSet
		equals: (class2 createIncomingQueryResultWith: (class2 methods flatCollect: [ :m | m incomingInvocations ])) asSet.
	self
		assert: (package2 queryIncoming: FAMIXInvocation) asSet
		equals: (package2 createIncomingQueryResultWith: (package2 methods flatCollect: [ :m | m incomingInvocations ])) asSet.
	self
		assert: (namespace queryIncoming: FAMIXInvocation) asSet
		equals:
			(namespace createIncomingQueryResultWith: (namespace methods flatCollect: [ :c | c incomingInvocations ])) asSet.
]

{ #category : #tests }
MooseQueryComparedToMooseChefTest >> testIncomingReferences [
	self
		assert: (package2 queryIncoming: FAMIXReference) asSet
		equals:
			(package2 createIncomingQueryResultWith: (package2 classes flatCollect: [ :c | c incomingReferences ])) asSet.
	
	self
		assert: (namespace queryIncoming: FAMIXReference) asSet
		equals:
			(namespace createIncomingQueryResultWith: (namespace classes flatCollect: [ :c | c incomingReferences ])) asSet.
	
	self
		assert: (class2 queryIncoming: FAMIXReference) asSet
		equals:
			(class2 createIncomingQueryResultWith: class2 incomingReferences) asSet.
			
	self
		assert: (method2 queryIncoming: FAMIXReference) asSet
		equals:
			(method2 createIncomingQueryResultWith: Set new) asSet.
	
			
	
]

{ #category : #tests }
MooseQueryComparedToMooseChefTest >> testOutgoingAccesses [
	self
		assert: (package2 queryOutgoing: FAMIXAccess) asSet
		equals: (package2 createOutgoingQueryResultWith: (package2 methods flatCollect: [ :m | m accesses ])) asSet.
	self
		assert: (namespace queryOutgoing: FAMIXAccess) asSet
		equals: (namespace createOutgoingQueryResultWith: (namespace methods flatCollect: [ :m | m accesses ])) asSet.
	self
		assert: (class2 queryOutgoing: FAMIXAccess) asSet
		equals: (class2 createOutgoingQueryResultWith: (class2 methods flatCollect: [ :m | m accesses ])) asSet.
	self
		assert: (method2 queryOutgoing: FAMIXAccess) asSet
		equals: (method2 createOutgoingQueryResultWith: method2 accesses) asSet
]

{ #category : #tests }
MooseQueryComparedToMooseChefTest >> testOutgoingInheritances [
	self
		assert: (class1 queryOutgoing: FAMIXInheritance) asSet
		equals: (class1 createOutgoingQueryResultWith: class1 superInheritances) asSet.
	self
		assert: (package1 queryOutgoing: FAMIXInheritance) asSet
		equals: (package1 createOutgoingQueryResultWith: (package1 classes flatCollect: [ :c | c superInheritances ])) asSet.
	self assert: (method2 queryOutgoing: FAMIXInheritance) asSet equals: Array empty asSet
]

{ #category : #tests }
MooseQueryComparedToMooseChefTest >> testOutgoingInvocations [
	self assert: (method2 queryOutgoing: FAMIXInvocation) asSet equals: (method2 createOutgoingQueryResultWith: method2 outgoingInvocations) asSet.
	self assert: (class2 queryOutgoing: FAMIXInvocation) asSet equals: (class2 createOutgoingQueryResultWith: (class2 methods flatCollect: [ :m | m outgoingInvocations ])) asSet.
	self assert: (package2 queryOutgoing: FAMIXInvocation) asSet equals: (package2 createOutgoingQueryResultWith: (package2 methods flatCollect: [ :m | m outgoingInvocations ])) asSet.
	self assert: (namespace queryOutgoing: FAMIXInvocation) asSet equals: (namespace createOutgoingQueryResultWith: (namespace methods flatCollect: [ :c | c outgoingInvocations ])) asSet
]

{ #category : #tests }
MooseQueryComparedToMooseChefTest >> testOutgoingReferences [
	self
		assert: (package1 queryOutgoing: FAMIXReference) asSet
		equals:
			(package1
				createOutgoingQueryResultWith: (package1 methods flatCollect: [ :m | m outgoingReferences ]))
				asSet.
	self
		assert: (class1 queryOutgoing: FAMIXReference) asSet
		equals:
			(class1
				createOutgoingQueryResultWith: (class1 methods flatCollect: [ :m | m outgoingReferences ]))
				asSet.
	self
		assert: (method1 queryOutgoing: FAMIXReference) asSet
		equals: (method1 createOutgoingQueryResultWith: method1 outgoingReferences) asSet
]
