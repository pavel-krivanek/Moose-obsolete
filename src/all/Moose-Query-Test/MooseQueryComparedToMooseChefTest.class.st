Class {
	#name : #MooseQueryComparedToMooseChefTest,
	#superclass : #MooseQueryTest,
	#category : #'Moose-Query-Test'
}

{ #category : #tests }
MooseQueryComparedToMooseChefTest >> testIncomingAccesses [
	self
		assert: (package2 queryIncoming: FmxNGAccess) asSet
		equals:
			(package2
				createIncomingQueryResultWith: (package2 classes flatCollect: [ :c | c queryIncomingAccesses ]))
				asSet.
	self
		assert: (namespace queryIncoming: FmxNGAccess) asSet
		equals:
			(namespace
				createIncomingQueryResultWith: (namespace classes flatCollect: [ :c | c queryIncomingAccesses ]))
				asSet.
	self
		assert: (class2 queryIncoming: FmxNGAccess) asSet
		equals:
			(class2
				createIncomingQueryResultWith: (class2 attributes flatCollect: [ :each | each incomingAccesses ]))
				asSet.
	self
		assert: (method2 queryIncoming: FmxNGAccess) asSet
		equals:
			(method2
				createIncomingQueryResultWith:
					((method2 parameters flatCollect: #incomingAccesses) asOrderedCollection
						addAll: (method2 localVariables flatCollect: #incomingAccesses);
						yourself)) asSet.
	self assert: (var3 queryIncoming: FmxNGAccess) asSet equals: var3 incomingAccesses asSet
]

{ #category : #tests }
MooseQueryComparedToMooseChefTest >> testIncomingInheritances [
	self
		assert: (class2 queryIncoming: FmxNGInheritance) asSet
		equals: (class2 createIncomingQueryResultWith: class2 subInheritances) asSet.
	self
		assert: (package2 queryIncoming: FmxNGInheritance) asSet
		equals: (package2 createIncomingQueryResultWith: (package2 classes flatCollect: [ :c | c subInheritances ])) asSet.
	self
		assert: (namespace queryIncoming: FmxNGInheritance) asSet
		equals: (namespace createIncomingQueryResultWith: (namespace classes flatCollect: [ :c | c subInheritances ])) asSet.
	self assert: (method2 queryIncoming: FmxNGInheritance) asSet equals: Array empty asSet
]

{ #category : #tests }
MooseQueryComparedToMooseChefTest >> testIncomingInvocations [
	"queryIncoming: is equivalent to query: #in with:"

	self
		assert: (method2 queryIncoming: FmxNGInvocation) asSet
		equals: (method2 createIncomingQueryResultWith: method2 incomingInvocations) asSet.
	self
		assert: (class2 queryIncoming: FmxNGInvocation) asSet
		equals: (class2 createIncomingQueryResultWith: (class2 methods flatCollect: [ :m | m incomingInvocations ])) asSet.
	self
		assert: (package2 queryIncoming: FmxNGInvocation) asSet
		equals: (package2 createIncomingQueryResultWith: (package2 methods flatCollect: [ :m | m incomingInvocations ])) asSet.
	self
		assert: (namespace queryIncoming: FmxNGInvocation) asSet
		equals:
			(namespace createIncomingQueryResultWith: (namespace methods flatCollect: [ :c | c incomingInvocations ])) asSet.
]

{ #category : #tests }
MooseQueryComparedToMooseChefTest >> testIncomingReferences [
	self
		assert: (package2 queryIncoming: FmxNGReference) asSet
		equals:
			(package2 createIncomingQueryResultWith: (package2 classes flatCollect: [ :c | c incomingReferences ])) asSet.
	
	self
		assert: (namespace queryIncoming: FmxNGReference) asSet
		equals:
			(namespace createIncomingQueryResultWith: (namespace classes flatCollect: [ :c | c incomingReferences ])) asSet.
	
	self
		assert: (class2 queryIncoming: FmxNGReference) asSet
		equals:
			(class2 createIncomingQueryResultWith: class2 incomingReferences) asSet.
			
	self
		assert: (method2 queryIncoming: FmxNGReference) asSet
		equals:
			(method2 createIncomingQueryResultWith: Set new) asSet.
	
			
	
]

{ #category : #tests }
MooseQueryComparedToMooseChefTest >> testOutgoingAccesses [
	self
		assert: (package2 queryOutgoing: FmxNGAccess) asSet
		equals: (package2 createOutgoingQueryResultWith: (package2 methods flatCollect: [ :m | m accesses ])) asSet.
	self
		assert: (namespace queryOutgoing: FmxNGAccess) asSet
		equals: (namespace createOutgoingQueryResultWith: (namespace methods flatCollect: [ :m | m accesses ])) asSet.
	self
		assert: (class2 queryOutgoing: FmxNGAccess) asSet
		equals: (class2 createOutgoingQueryResultWith: (class2 methods flatCollect: [ :m | m accesses ])) asSet.
	self
		assert: (method2 queryOutgoing: FmxNGAccess) asSet
		equals: (method2 createOutgoingQueryResultWith: method2 accesses) asSet
]

{ #category : #tests }
MooseQueryComparedToMooseChefTest >> testOutgoingInheritances [
	self
		assert: (class1 queryOutgoing: FmxNGInheritance) asSet
		equals: (class1 createOutgoingQueryResultWith: class1 superInheritances) asSet.
	self
		assert: (package1 queryOutgoing: FmxNGInheritance) asSet
		equals: (package1 createOutgoingQueryResultWith: (package1 classes flatCollect: [ :c | c superInheritances ])) asSet.
	self assert: (method2 queryOutgoing: FmxNGInheritance) asSet equals: Array empty asSet
]

{ #category : #tests }
MooseQueryComparedToMooseChefTest >> testOutgoingInvocations [
	self assert: (method2 queryOutgoing: FmxNGInvocation) asSet equals: (method2 createOutgoingQueryResultWith: method2 outgoingInvocations) asSet.
	self assert: (class2 queryOutgoing: FmxNGInvocation) asSet equals: (class2 createOutgoingQueryResultWith: (class2 methods flatCollect: [ :m | m outgoingInvocations ])) asSet.
	self assert: (package2 queryOutgoing: FmxNGInvocation) asSet equals: (package2 createOutgoingQueryResultWith: (package2 methods flatCollect: [ :m | m outgoingInvocations ])) asSet.
	self assert: (namespace queryOutgoing: FmxNGInvocation) asSet equals: (namespace createOutgoingQueryResultWith: (namespace methods flatCollect: [ :c | c outgoingInvocations ])) asSet
]

{ #category : #tests }
MooseQueryComparedToMooseChefTest >> testOutgoingReferences [
	self
		assert: (package1 queryOutgoing: FmxNGReference) asSet
		equals:
			(package1
				createOutgoingQueryResultWith: (package1 methods flatCollect: [ :m | m outgoingReferences ]))
				asSet.
	self
		assert: (class1 queryOutgoing: FmxNGReference) asSet
		equals:
			(class1
				createOutgoingQueryResultWith: (class1 methods flatCollect: [ :m | m outgoingReferences ]))
				asSet.
	self
		assert: (method1 queryOutgoing: FmxNGReference) asSet
		equals: (method1 createOutgoingQueryResultWith: method1 outgoingReferences) asSet
]
