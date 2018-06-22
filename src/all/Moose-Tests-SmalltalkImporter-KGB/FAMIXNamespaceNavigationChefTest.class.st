Class {
	#name : #FAMIXNamespaceNavigationChefTest,
	#superclass : #AbstractFAMIXNavigationTest,
	#category : #'Moose-Tests-SmalltalkImporter-KGB-MooseChef'
}

{ #category : #allDependencies }
FAMIXNamespaceNavigationChefTest >> testClientClasses [
	self
		assert: (self namespace2FullReferee queryAllIncoming atScope: FmxNGTType) asSet
		equals:
			{self c14ReferencerOutSideRefereeOutSide.
			self c1FullReferencerOutSide.
			self c6FullReferencerInSideOutSide.
			self c3ReferencerInSideRefereeOutSide.
			self c10FullReferencerInSide.
			self c11FullRefereeOutSide.
			self c12FullReferencerInSide.
			self c13FullRefereeInSideOutSide.
			self c9FullRefereeInSide} asSet
]

{ #category : #allDependencies }
FAMIXNamespaceNavigationChefTest >> testClientClassesInto [
	self assert: (((self namespace2FullReferee queryAllIncoming atScope: FmxNGTType) withinNamespace: self namespace3ReferencerReferee) equalsTo: (Set with: self c14ReferencerOutSideRefereeOutSide))
]

{ #category : #allDependencies }
FAMIXNamespaceNavigationChefTest >> testClientNamespaces [
	self
		assert:
			((self namespace2FullReferee queryAllIncoming atScope: FmxNGTNamespace)
				equalsTo: (Set with: self namespace1InteractedReferencerReferee with: self namespace3ReferencerReferee with: self namespace2FullReferee))
]

{ #category : #'MooseKGB-TestFamix3-integralTests' }
FAMIXNamespaceNavigationChefTest >> testEachOutgoingReferenceImpliesAnIncomingReference [
	| modelNamespaces |
	modelNamespaces := self model allNamespaces.
	self
		assert:
			(modelNamespaces
				allSatisfy: [ :referencer | 
					(referencer queryAllOutgoingInvocations atScope: FmxNGTType)
						allSatisfy: [ :referenced | 
							(referenced queryAllIncomingInvocations atScope: FmxNGTNamespace)
								includes: referencer ] ]).
	self
		assert:
			(modelNamespaces
				allSatisfy: [ :referencer | 
					(referencer queryAllOutgoingInvocations atScope: FmxNGTNamespace)
						allSatisfy: [ :referenced | 
							(referenced queryAllIncomingInvocations atScope: FmxNGTNamespace)
								includes: referencer ] ])
]

{ #category : #'MooseKGB-TestFamix3-integralTests' }
FAMIXNamespaceNavigationChefTest >> testEachSureOutgoingReferenceImpliesASureIncomingReference [
	| modelNamespaces |
	modelNamespaces := self model allNamespaces.
	self
		assert:
			(modelNamespaces
				allSatisfy: [ :referencer | 
					(referencer querySureOutgoingInvocations atScope: FmxNGTType)
						allSatisfy: [ :referenced | 
							(referenced queryAllIncomingInvocations atScope: FmxNGTNamespace)
								includes: referencer ] ]).
	self
		assert:
			(modelNamespaces
				allSatisfy: [ :referencer | 
					(referencer querySureOutgoingInvocations atScope: FmxNGTNamespace)
						allSatisfy: [ :referenced | 
							(referenced queryAllIncomingInvocations atScope: FmxNGTNamespace)
								includes: referencer ] ])
]

{ #category : #inheritance }
FAMIXNamespaceNavigationChefTest >> testInheritedByClasses [
	self
		assert:
			((self namespace2FullReferee queryIncomingInheritances
				atScope: FmxNGTType)
				equalsTo:
					(Set
						with: self c3ReferencerInSideRefereeOutSide
						with: self c11FullRefereeOutSide)).
	self
		assert:
			(self namespace2FullReferee queryIncomingInheritances opposites
				equalsTo:
					(Set
						with: self c11FullRefereeOutSide
						with: self c3ReferencerInSideRefereeOutSide))
]

{ #category : #inheritance }
FAMIXNamespaceNavigationChefTest >> testInheritedByClassesInto [
	self
		assert:
			(((self namespace2FullReferee queryIncomingInheritances
				atScope: FmxNGTType)
				withinNamespace: self namespace1InteractedReferencerReferee)
				equalsTo: (Set with: self c3ReferencerInSideRefereeOutSide)).
	self
		assert:
			((self namespace2FullReferee queryIncomingInheritances
				atScope: FmxNGTType) withinNamespace: self namespace2FullReferee)
				size
		equals: 1
]

{ #category : #inheritance }
FAMIXNamespaceNavigationChefTest >> testInheritedByNamespaces [
	self
		assert:
			((self namespace2FullReferee queryIncomingInheritances
				atScope: FmxNGTNamespace)
				equalsTo:
					(Set
						with: self namespace1InteractedReferencerReferee
						with: self namespace2FullReferee))
]

{ #category : #inheritance }
FAMIXNamespaceNavigationChefTest >> testInheritedClasses [
	self
		assert:
			((self namespace1InteractedReferencerReferee queryOutgoingInheritances
				atScope: FmxNGTType)
				equalsTo:
					(Set
						with: self c11FullRefereeOutSide
						with: self cObject
						with: self c6FullReferencerInSideOutSide)).
	self
		assert:
			(self namespace1InteractedReferencerReferee queryOutgoingInheritances
				opposites
				equalsTo:
					(Set
						with: self c6FullReferencerInSideOutSide
						with: self c11FullRefereeOutSide
						with: self cObject))
]

{ #category : #inheritance }
FAMIXNamespaceNavigationChefTest >> testInheritedClassesInto [
	self
		assert:
			(((self namespace1InteractedReferencerReferee
				queryOutgoingInheritances atScope: FmxNGTType)
				withinNamespace: self namespace2FullReferee)
				equalsTo: (Set with: self c11FullRefereeOutSide))
]

{ #category : #inheritance }
FAMIXNamespaceNavigationChefTest >> testInheritedNamespaces [
	self
		assert:
			((self namespace1InteractedReferencerReferee queryOutgoingInheritances
				atScope: FmxNGTNamespace)
				equalsTo:
					(Set
						with: self namespace2FullReferee
						with: self namespaceSmalltalkCore
						with: self namespace1InteractedReferencerReferee))
]

{ #category : #allDependencies }
FAMIXNamespaceNavigationChefTest >> testProviderClasses [
	self
		assert:
			((self namespace1InteractedReferencerReferee queryAllOutgoing atScope: FmxNGTType)
				equalsTo:
					((Set
						with: self c11FullRefereeOutSide
						with: self c13FullRefereeInSideOutSide
						with: self c14ReferencerOutSideRefereeOutSide
						with: self cObject
						with: self c7FullRefereeInSide)
						union:
							(Set
								with: self c6FullReferencerInSideOutSide
								with: self c2ReferencerOutSideRefereeInSide
								with: self c4FullRefereeInSide
								with: self c3ReferencerInSideRefereeOutSide
								with: self c1FullReferencerOutSide
								with: self c5ReferencerInSideRefereeInSide)))
]

{ #category : #allDependencies }
FAMIXNamespaceNavigationChefTest >> testProviderClassesInto [
	| invos refs inh |
	self
		assert:
			(((self namespace1InteractedReferencerReferee queryAllOutgoing atScope: FmxNGTType) withinNamespace: self namespace2FullReferee)
				equalsTo: (Set with: self c11FullRefereeOutSide with: self c13FullRefereeInSideOutSide)).
	self assert: 15 equals: (self namespace1InteractedReferencerReferee queryAllOutgoing withinNamespace: self namespace2FullReferee) size.
	invos := (self namespace1InteractedReferencerReferee queryAllOutgoing withinNamespace: self namespace2FullReferee) select: [ :dep | dep isKindOf: FmxNGTInvocation ].
	self assert: 10 equals: invos size.
	refs := (self namespace1InteractedReferencerReferee queryAllOutgoing withinNamespace: self namespace2FullReferee) select: [ :dep | dep isKindOf: FmxNGTReference ].
	self assert: 4 equals: refs size.
	inh := (self namespace1InteractedReferencerReferee queryAllOutgoing withinNamespace: self namespace2FullReferee) select: [ :dep | dep isKindOf: FmxNGTSubInheritance  ].
	self assert: 1 equals: inh size.
	self
		assert:
			(((self namespace1InteractedReferencerReferee queryAllOutgoing withinNamespace: self namespace2FullReferee) atScope: FmxNGTType)
				equalsTo: (Set with: self c11FullRefereeOutSide with: self c13FullRefereeInSideOutSide))
]

{ #category : #allDependencies }
FAMIXNamespaceNavigationChefTest >> testProviderClassesOutOf [
	| invos refs inh acc |
	self
		assert:
			(((self namespace1InteractedReferencerReferee queryAllOutgoing atScope: FmxNGTType) outOfPackage: self packageP5FullReferee)
				equalsTo:
					((Set
						with: self c13FullRefereeInSideOutSide
						with: self c14ReferencerOutSideRefereeOutSide
						with: self cObject
						with: self c6FullReferencerInSideOutSide
						with: self c5ReferencerInSideRefereeInSide
						with: self c7FullRefereeInSide)
						union:
							(Set
								with: self c2ReferencerOutSideRefereeInSide
								with: self c3ReferencerInSideRefereeOutSide
								with: self c4FullRefereeInSide
								with: self c1FullReferencerOutSide))).
	self assert: 55 equals: (self namespace1InteractedReferencerReferee queryAllOutgoing outOfPackage: self packageP5FullReferee) size.
	invos := (self namespace1InteractedReferencerReferee queryAllOutgoing outOfPackage: self packageP5FullReferee) select: [ :dep | dep isKindOf: FmxNGTInvocation ].
	self assert: 29 equals: invos size.
	refs := (self namespace1InteractedReferencerReferee queryAllOutgoing outOfPackage: self packageP5FullReferee) select: [ :dep | dep isKindOf: FmxNGTReference ].
	self assert: 10 equals: refs size.
	inh := (self namespace1InteractedReferencerReferee queryAllOutgoing outOfPackage: self packageP5FullReferee) select: [ :dep | dep isKindOf: FmxNGTSubInheritance ].
	self assert: 7 equals: inh size.
	acc := (self namespace1InteractedReferencerReferee queryAllOutgoing outOfPackage: self packageP5FullReferee) select: [ :dep | dep isKindOf: FmxNGTAccess ].
	self assert: 9 equals: acc size.
	self
		assert:
			(((self namespace1InteractedReferencerReferee queryAllOutgoing outOfPackage: self packageP5FullReferee) atScope: FmxNGTType)
				equalsTo:
					((Set
						with: self c13FullRefereeInSideOutSide
						with: self c14ReferencerOutSideRefereeOutSide
						with: self cObject
						with: self c6FullReferencerInSideOutSide
						with: self c5ReferencerInSideRefereeInSide
						with: self c7FullRefereeInSide)
						union:
							(Set
								with: self c2ReferencerOutSideRefereeInSide
								with: self c3ReferencerInSideRefereeOutSide
								with: self c4FullRefereeInSide
								with: self c1FullReferencerOutSide)))
]

{ #category : #allDependencies }
FAMIXNamespaceNavigationChefTest >> testProviderNamespaces [
	self
		assert:
			((self namespace1InteractedReferencerReferee queryAllOutgoing atScope: FmxNGTNamespace)
				equalsTo:
					(Set
						with: self namespace2FullReferee
						with: self namespace3ReferencerReferee
						with: self namespaceSmalltalkCore
						with: self namespace1InteractedReferencerReferee))
]

{ #category : #allOutgoingInvocations }
FAMIXNamespaceNavigationChefTest >> testReferencedClasses [
	self
		assert:
			((self namespace1InteractedReferencerReferee
				queryAllOutgoingInvocations atScope: FmxNGTType)
				equalsTo:
					((Set
						with: self c11FullRefereeOutSide
						with: self c14ReferencerOutSideRefereeOutSide
						with: self c13FullRefereeInSideOutSide
						with: self c5ReferencerInSideRefereeInSide
						with: self c7FullRefereeInSide)
						union:
							(Set
								with: self c2ReferencerOutSideRefereeInSide
								with: self c3ReferencerInSideRefereeOutSide
								with: self c4FullRefereeInSide
								with: self c1FullReferencerOutSide)))
]

{ #category : #allOutgoingInvocations }
FAMIXNamespaceNavigationChefTest >> testReferencedClassesInto [
	self
		assert:
			(((self namespace1InteractedReferencerReferee
				queryAllOutgoingInvocations atScope: FmxNGTType)
				withinNamespace: self namespace2FullReferee)
				equalsTo:
					(Set
						with: self c11FullRefereeOutSide
						with: self c13FullRefereeInSideOutSide))
]

{ #category : #allOutgoingInvocations }
FAMIXNamespaceNavigationChefTest >> testReferencedNamespaces [
	self
		assert:
			((self namespace1InteractedReferencerReferee
				queryAllOutgoingInvocations atScope: FmxNGTNamespace)
				equalsTo:
					(Set
						with: self namespace2FullReferee
						with: self namespace3ReferencerReferee
						with: self namespace1InteractedReferencerReferee))
]

{ #category : #allIncomingInvocations }
FAMIXNamespaceNavigationChefTest >> testReferencingClasses [
	self
		assert:
			((self namespace2FullReferee queryAllIncomingInvocations
				atScope: FmxNGTType)
				equalsTo:
					((Set
						with: self c14ReferencerOutSideRefereeOutSide
						with: self c1FullReferencerOutSide
						with: self c6FullReferencerInSideOutSide)
						union:
							(Set
								with: self c12FullReferencerInSide
								with: self c13FullRefereeInSideOutSide
								with: self c10FullReferencerInSide
								with: self c11FullRefereeOutSide)))
]

{ #category : #allIncomingInvocations }
FAMIXNamespaceNavigationChefTest >> testReferencingClassesInto [
	self
		assert:
			(((self namespace2FullReferee queryAllIncomingInvocations
				atScope: FmxNGTType)
				withinNamespace: self namespace3ReferencerReferee)
				equalsTo: (Set with: self c14ReferencerOutSideRefereeOutSide))
]

{ #category : #allIncomingInvocations }
FAMIXNamespaceNavigationChefTest >> testReferencingNamespaces [
	self
		assert:
			((self namespace2FullReferee queryAllIncomingInvocations
				atScope: FmxNGTNamespace)
				equalsTo:
					(Set
						with: self namespace1InteractedReferencerReferee
						with: self namespace3ReferencerReferee
						with: self namespace2FullReferee))
]

{ #category : #sureOutgoingInvocations }
FAMIXNamespaceNavigationChefTest >> testSureReferencedClasses [
	self
		assert:
			((self namespace1InteractedReferencerReferee
				querySureOutgoingInvocations atScope: FmxNGTType)
				equalsTo:
					(Set
						with: self c11FullRefereeOutSide
						with: self c13FullRefereeInSideOutSide
						with: self c14ReferencerOutSideRefereeOutSide
						with: self c4FullRefereeInSide))
]

{ #category : #sureOutgoingInvocations }
FAMIXNamespaceNavigationChefTest >> testSureReferencedClassesInto [
	self
		assert:
			(((self namespace1InteractedReferencerReferee
				querySureOutgoingInvocations atScope: FmxNGTType)
				withinNamespace: self namespace2FullReferee)
				equalsTo:
					(Set
						with: self c11FullRefereeOutSide
						with: self c13FullRefereeInSideOutSide))
]

{ #category : #sureOutgoingInvocations }
FAMIXNamespaceNavigationChefTest >> testSureReferencedNamespaces [
	self
		assert:
			((self namespace1InteractedReferencerReferee
				querySureOutgoingInvocations atScope: FmxNGTNamespace)
				equalsTo:
					(Set
						with: self namespace2FullReferee
						with: self namespace3ReferencerReferee
						with: self namespace1InteractedReferencerReferee))
]

{ #category : #sureIncomingInvocations }
FAMIXNamespaceNavigationChefTest >> testSureReferencingClasses [
	self
		assert:
			((self namespace2FullReferee querySureIncomingInvocations
				atScope: FmxNGTType)
				equalsTo:
					((Set
						with: self c14ReferencerOutSideRefereeOutSide
						with: self c1FullReferencerOutSide
						with: self c6FullReferencerInSideOutSide
						with: self c11FullRefereeOutSide
						with: self c13FullRefereeInSideOutSide
						with: self c12FullReferencerInSide)
						union: (Set with: self c10FullReferencerInSide)))
]

{ #category : #sureIncomingInvocations }
FAMIXNamespaceNavigationChefTest >> testSureReferencingClassesInto [
	self
		assert:
			(((self namespace2FullReferee querySureIncomingInvocations
				atScope: FmxNGTType)
				withinNamespace: self namespace3ReferencerReferee)
				equalsTo: (Set with: self c14ReferencerOutSideRefereeOutSide))
]

{ #category : #sureIncomingInvocations }
FAMIXNamespaceNavigationChefTest >> testSureReferencingNamespaces [
	self
		assert:
			((self namespace2FullReferee querySureIncomingInvocations
				atScope: FmxNGTNamespace)
				equalsTo:
					(Set
						with: self namespace1InteractedReferencerReferee
						with: self namespace2FullReferee
						with: self namespace3ReferencerReferee))
]
