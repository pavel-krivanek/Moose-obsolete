Class {
	#name : #FAMIXClassNavigationChefTest,
	#superclass : #AbstractFAMIXNavigationTest,
	#category : #'Moose-Tests-SmalltalkImporter-KGB-MooseChef'
}

{ #category : #allIncomingInvocations }
FAMIXClassNavigationChefTest >> testAllIncomingInvocationsIntoMyNamespace [
	self assert: self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations withinMyNamespace isEmpty.
	self assert: self c13FullRefereeInSideOutSide queryAllIncomingInvocations withinMyNamespace size equals: 4.	"querying dependencies does not exclude self loop, hence C13 is on both sides"
	self
		assert:
			((self c13FullRefereeInSideOutSide queryAllIncomingInvocations withinMyNamespace atScope: FmxNGTType) asSet equalsTo: (Set with: self c13FullRefereeInSideOutSide with: self c12FullReferencerInSide))
]

{ #category : #allIncomingInvocations }
FAMIXClassNavigationChefTest >> testAllIncomingInvocationsOutOfMyPackage [
	self assert: self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations outOfMyPackage size equals: 3.
	self assert: ((self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations outOfMyPackage atScope: FmxNGTType) equalsTo: (Set with: self c2ReferencerOutSideRefereeInSide)).
	self assert: self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations outOfMyPackage size equals: 4.
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations outOfMyPackage atScope: FmxNGTType)
				equalsTo: (Set with: self c1FullReferencerOutSide with: self c6FullReferencerInSideOutSide with: self c14ReferencerOutSideRefereeOutSide))
]

{ #category : #allOutgoingInvocations }
FAMIXClassNavigationChefTest >> testAllOutgoingDependenciesWithoutSelfLoops [
	self assert: 25 equals: self c1FullReferencerOutSide queryAllOutgoing size.
	self assert: ((self c1FullReferencerOutSide queryAllOutgoing atScope: FmxNGTType) includes: self c1FullReferencerOutSide).
	self assert: 16 equals: self c1FullReferencerOutSide queryAllOutgoing withoutSelfLoops size.
	self deny: ((self c1FullReferencerOutSide queryAllOutgoing withoutSelfLoops atScope: FmxNGTType) includes: self c1FullReferencerOutSide)
]

{ #category : #allOutgoingInvocations }
FAMIXClassNavigationChefTest >> testAllOutgoingInvocationsIntoMyPackage [
	self assert: 1 equals: self c6FullReferencerInSideOutSide queryAllOutgoingInvocations withinMyPackage size.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryAllOutgoingInvocations withinMyPackage atScope: FmxNGTType)
				equalsTo: (self c6FullReferencerInSideOutSide queryAllOutgoingInvocations atScope: FmxNGTType) withinMyPackage)
]

{ #category : #allOutgoingInvocations }
FAMIXClassNavigationChefTest >> testAllOutgoingInvocationsOutOfMyNamespace [
	self
		assert: 3
		equals:
			self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				outOfMyNamespace size.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				outOfMyNamespace atScope: FmxNGTType)
				equalsTo:
					(self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
						atScope: FmxNGTType) outOfMyNamespace)
]

{ #category : #allOutgoingInvocations }
FAMIXClassNavigationChefTest >> testAllOutgoingInvocationsWithoutSelfLoops [
	self assert: 13 equals: self c1FullReferencerOutSide queryAllOutgoingInvocations size.
	self assert: ((self c1FullReferencerOutSide queryAllOutgoingInvocations atScope: FmxNGTType) includes: self c1FullReferencerOutSide).
	self assert: 12 equals: self c1FullReferencerOutSide queryAllOutgoingInvocations withoutSelfLoops size.
	self deny: ((self c1FullReferencerOutSide queryAllOutgoingInvocations withoutSelfLoops atScope: FmxNGTType) includes: self c1FullReferencerOutSide)
]

{ #category : #allDependencies }
FAMIXClassNavigationChefTest >> testClientClasses [
	self assert: (self c14ReferencerOutSideRefereeOutSide queryAllIncoming withoutSelfLoops atScope: FmxNGTType) size equals: 2.
	self
		assert: ((self c14ReferencerOutSideRefereeOutSide queryAllIncoming withoutSelfLoops atScope: FmxNGTType) equalsTo: (Set with: self c2ReferencerOutSideRefereeInSide with: self c15FullReferencerOutSide)).
	self assert: (self c3ReferencerInSideRefereeOutSide queryAllIncoming atScope: FmxNGTType) size equals: 3.
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryAllIncoming atScope: FmxNGTType)
				equalsTo: (Set with: self c1FullReferencerOutSide with: self c6FullReferencerInSideOutSide with: self c14ReferencerOutSideRefereeOutSide))
]

{ #category : #allDependencies }
FAMIXClassNavigationChefTest >> testClientClassesInto [
	| p1 p2 |
	p1 := self packageP1FullReferencer.
	p2 := self packageP2InteractedReferencerReferee.
	self assert: ((self c14ReferencerOutSideRefereeOutSide queryAllIncoming atScope: FmxNGTType) withinPackage: p2) size equals: 1.
	self assert: (((self c14ReferencerOutSideRefereeOutSide queryAllIncoming atScope: FmxNGTType) withinPackage: p2) equalsTo: (Set with: self c2ReferencerOutSideRefereeInSide)).
	self assert: ((self c14ReferencerOutSideRefereeOutSide queryAllIncoming atScope: FmxNGTType) withinNamespace: self namespace1InteractedReferencerReferee) size equals: 1.
	self
		assert:
			(((self c14ReferencerOutSideRefereeOutSide queryAllIncoming atScope: FmxNGTType) withinNamespace: self namespace1InteractedReferencerReferee) equalsTo: (Set with: self c2ReferencerOutSideRefereeInSide)).
	self assert: (((self c3ReferencerInSideRefereeOutSide queryAllIncoming atScope: FmxNGTType) withinPackage: p1) equalsTo: (Set with: self c1FullReferencerOutSide)).
	self assert: ((self c3ReferencerInSideRefereeOutSide queryAllIncoming atScope: FmxNGTType) withinNamespace: self namespace1InteractedReferencerReferee) size equals: 2.
	self
		assert:
			(((self c3ReferencerInSideRefereeOutSide queryAllIncoming atScope: FmxNGTType) withinNamespace: self namespace1InteractedReferencerReferee)
				equalsTo: (Set with: self c1FullReferencerOutSide with: self c6FullReferencerInSideOutSide))
]

{ #category : #allDependencies }
FAMIXClassNavigationChefTest >> testClientClassesIntoMyNamespace [
	self assert: (self c14ReferencerOutSideRefereeOutSide queryAllIncoming withoutSelfLoops atScope: FmxNGTType) withinMyNamespace size equals: 0.
	self assert: (self c13FullRefereeInSideOutSide queryAllIncoming atScope: FmxNGTType) withinMyNamespace size equals: 2.
	self assert: ((self c13FullRefereeInSideOutSide queryAllIncoming atScope: FmxNGTType) withinMyNamespace equalsTo: (Set with: self c12FullReferencerInSide with: self c13FullRefereeInSideOutSide))
]

{ #category : #allDependencies }
FAMIXClassNavigationChefTest >> testClientClassesIntoMyPackage [
	self assert: (self c14ReferencerOutSideRefereeOutSide queryAllIncoming withoutSelfLoops atScope: FmxNGTType) withinMyPackage size equals: 0.
	self assert: (self c13FullRefereeInSideOutSide queryAllIncoming atScope: FmxNGTType) withinMyPackage size equals: 2.
	self assert: ((self c13FullRefereeInSideOutSide queryAllIncoming atScope: FmxNGTType) withinMyPackage equalsTo: (Set with: self c12FullReferencerInSide with: self c13FullRefereeInSideOutSide))
]

{ #category : #allDependencies }
FAMIXClassNavigationChefTest >> testClientClassesOutOfMyNamespace [
	self assert: (self c14ReferencerOutSideRefereeOutSide queryAllIncoming atScope: FmxNGTType) outOfMyNamespace size equals: 2.
	self
		assert: ((self c14ReferencerOutSideRefereeOutSide queryAllIncoming atScope: FmxNGTType) outOfMyNamespace equalsTo: (Set with: self c2ReferencerOutSideRefereeInSide with: self c15FullReferencerOutSide)).
	self assert: (self c3ReferencerInSideRefereeOutSide queryAllIncoming atScope: FmxNGTType) outOfMyNamespace size equals: 1.
	self assert: ((self c3ReferencerInSideRefereeOutSide queryAllIncoming atScope: FmxNGTType) outOfMyNamespace equalsTo: (Set with: self c14ReferencerOutSideRefereeOutSide))
]

{ #category : #allDependencies }
FAMIXClassNavigationChefTest >> testClientClassesOutOfMyPackage [
	self assert: (self c14ReferencerOutSideRefereeOutSide queryAllIncoming atScope: FmxNGTType) outOfMyPackage size equals: 2.
	self assert: ((self c14ReferencerOutSideRefereeOutSide queryAllIncoming atScope: FmxNGTType) outOfMyPackage equalsTo: (Set with: self c2ReferencerOutSideRefereeInSide with: self c15FullReferencerOutSide)).
	self assert: (self c3ReferencerInSideRefereeOutSide queryAllIncoming atScope: FmxNGTType) outOfMyPackage size equals: 3.
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryAllIncoming atScope: FmxNGTType) outOfMyPackage
				equalsTo: (Set with: self c1FullReferencerOutSide with: self c6FullReferencerInSideOutSide with: self c14ReferencerOutSideRefereeOutSide))
]

{ #category : #allDependencies }
FAMIXClassNavigationChefTest >> testClientNamespaces [
	self assert: (self c14ReferencerOutSideRefereeOutSide queryAllIncoming withoutSelfLoops atScope: FmxNGTNamespace) size equals: 2.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide queryAllIncoming withoutSelfLoops atScope: FmxNGTNamespace) equalsTo: (Set with: self namespace1InteractedReferencerReferee with: self namespace4FullReferencer))
]

{ #category : #allDependencies }
FAMIXClassNavigationChefTest >> testClientPackages [
	| p2 p8 |
	p2 := self packageP2InteractedReferencerReferee.
	p8 := self packageP8FullReferencer.
	self assert: (self c14ReferencerOutSideRefereeOutSide queryAllIncoming withoutSelfLoops atScope: FmxNGTPackage) size equals: 2.
	self assert: ((self c14ReferencerOutSideRefereeOutSide queryAllIncoming withoutSelfLoops atScope: FmxNGTPackage) equalsTo: (Set with: p2 with: p8))
]

{ #category : #'MooseKGB-TestFamix3-integralTests' }
FAMIXClassNavigationChefTest >> testEachOutgoingReferenceImpliesAnIncomingReference [
	| modelClasses |
	modelClasses := self model allClasses.
	self
		assert:
			(modelClasses
				allSatisfy: [ :referencer | (referencer queryAllOutgoingInvocations atScope: FmxNGTType) allSatisfy: [ :referenced | (referenced queryAllIncomingInvocations atScope: FmxNGTType) includes: referencer ] ]).
	self
		assert:
			(modelClasses
				allSatisfy:
					[ :referencer | (referencer queryAllOutgoingInvocations atScope: FmxNGTPackage) allSatisfy: [ :referenced | (referenced queryAllIncomingInvocations atScope: FmxNGTType) includes: referencer ] ]).
	self
		assert:
			(modelClasses
				allSatisfy:
					[ :referencer | (referencer queryAllOutgoingInvocations atScope: FmxNGTNamespace) allSatisfy: [ :referenced | (referenced queryAllIncomingInvocations atScope: FmxNGTType) includes: referencer ] ])
]

{ #category : #'MooseKGB-TestFamix3-integralTests' }
FAMIXClassNavigationChefTest >> testEachStaticOutgoingReferenceImpliesAStaticIncomingReference [
	| modelClasses |
	modelClasses := self model allClasses.
	self
		assert:
			(modelClasses
				allSatisfy: [ :referencer | (referencer queryOutgoingReferences atScope: FmxNGTType) allSatisfy: [ :referenced | (referenced queryIncomingReferences atScope: FmxNGTType) includes: referencer ] ]).
	self
		assert:
			(modelClasses
				allSatisfy: [ :referencer | (referencer queryOutgoingReferences atScope: FmxNGTPackage) allSatisfy: [ :referenced | (referenced queryIncomingReferences atScope: FmxNGTType) includes: referencer ] ])
]

{ #category : #'MooseKGB-TestFamix3-integralTests' }
FAMIXClassNavigationChefTest >> testEachSureOutgoingReferenceImpliesASureIncomingReference [
	| modelClasses |
	modelClasses := self model allClasses.
	self
		assert:
			(modelClasses
				allSatisfy: [ :referencer | (referencer querySureOutgoingInvocations atScope: FmxNGTType) allSatisfy: [ :referenced | (referenced querySureIncomingInvocations atScope: FmxNGTType) includes: referencer ] ]).
	self
		assert:
			(modelClasses
				allSatisfy: [ :referencer | (referencer querySureOutgoingInvocations atScope: FmxNGTPackage) allSatisfy: [ :referenced | (referenced querySureIncomingInvocations atScope: FmxNGTType) includes: referencer ] ]).
	self
		assert:
			(modelClasses
				allSatisfy:
					[ :referencer | (referencer querySureOutgoingInvocations atScope: FmxNGTNamespace) allSatisfy: [ :referenced | (referenced querySureIncomingInvocations atScope: FmxNGTType) includes: referencer ] ])
]

{ #category : #'MooseKGB-TestFamix3-integralTests' }
FAMIXClassNavigationChefTest >> testIncomingReferencesAreEitherPotentialOrSureOrStatic [
	| modelClasses |
	modelClasses := self model allClasses.
	self flag: 'Should we test all combinations of static, access, inheritance...?'.
	self assert: (modelClasses allSatisfy: [ :referencer | (referencer queryAllIncoming atScope: FmxNGTType) includesAll: (referencer queryAllIncomingInvocations atScope: FmxNGTType) ]).
	self assert: (modelClasses allSatisfy: [ :referencer | (referencer queryAllIncoming atScope: FmxNGTPackage) includesAll: (referencer queryAllIncomingInvocations atScope: FmxNGTPackage) ]).
	self assert: (modelClasses allSatisfy: [ :referencer | (referencer queryAllIncoming atScope: FmxNGTNamespace) includesAll: (referencer queryAllIncomingInvocations atScope: FmxNGTNamespace) ])
]

{ #category : #inheritance }
FAMIXClassNavigationChefTest >> testInheritedByClasses [ 
	 
	self 
		assert: 
			(self c11FullRefereeOutSide queryIncomingInheritances opposites 
				equalsTo: (Set with: self c3ReferencerInSideRefereeOutSide))
]

{ #category : #inheritance }
FAMIXClassNavigationChefTest >> testInheritedByClassesInto [ 

	self assert: ((self c11FullRefereeOutSide queryIncomingInheritances opposites
						withinNamespace: self namespace1InteractedReferencerReferee) 
		equalsTo: (Set with: self c3ReferencerInSideRefereeOutSide)). 
	self assert: ((self c11FullRefereeOutSide queryIncomingInheritances opposites
						withinPackage: self packageP2InteractedReferencerReferee) 
		equalsTo: (Set with: self c3ReferencerInSideRefereeOutSide))
]

{ #category : #inheritance }
FAMIXClassNavigationChefTest >> testInheritedByClassesIntoMyNamespace [ 
	 
	self 
		assert: 
			(self c12FullReferencerInSide queryIncomingInheritances opposites withinMyNamespace  
				equalsTo: (Set with: self c11FullRefereeOutSide))
]

{ #category : #inheritance }
FAMIXClassNavigationChefTest >> testInheritedByClassesIntoMyPackage [ 
	 
	self 
		assert: 
			self c11FullRefereeOutSide queryIncomingInheritances opposites withinMyPackage isEmpty
]

{ #category : #inheritance }
FAMIXClassNavigationChefTest >> testInheritedByClassesOutOfMyNamespace [ 
	 
	self 
		assert: 
			(self c11FullRefereeOutSide queryIncomingInheritances opposites outOfMyNamespace 
				equalsTo: (Set with: self c3ReferencerInSideRefereeOutSide))
]

{ #category : #inheritance }
FAMIXClassNavigationChefTest >> testInheritedByClassesOutOfMyPackage [ 
	 
	self 
		assert: 
			(self c11FullRefereeOutSide queryIncomingInheritances opposites outOfMyPackage 
				equalsTo: (Set with: self c3ReferencerInSideRefereeOutSide))
]

{ #category : #inheritance }
FAMIXClassNavigationChefTest >> testInheritedByNamespaces [
	self
		assert:
			((self c11FullRefereeOutSide queryIncomingInheritances
				atScope: FmxNGTNamespace)
				equalsTo: (Set with: self namespace1InteractedReferencerReferee))
]

{ #category : #inheritance }
FAMIXClassNavigationChefTest >> testInheritedByPackages [
	self
		assert:
			((self c11FullRefereeOutSide queryIncomingInheritances
				atScope: FmxNGTPackage)
				equalsTo: (Set with: self packageP2InteractedReferencerReferee))
]

{ #category : #inheritance }
FAMIXClassNavigationChefTest >> testInheritedClasses [ 
	 
	self 
		assert: 
			(self c11FullRefereeOutSide queryOutgoingInheritances opposites 
				equalsTo: (Set with: self c12FullReferencerInSide))
]

{ #category : #inheritance }
FAMIXClassNavigationChefTest >> testInheritedClassesInto [ 
	 
	| p6 | 
	p6 := self packageP6InteractedReferee. 
	self 
		assert: 
			((self c11FullRefereeOutSide queryOutgoingInheritances opposites withinPackage: p6) 
				equalsTo: (Set with: self c12FullReferencerInSide)). 
	self 
		assert: 
			((self c11FullRefereeOutSide 
				queryOutgoingInheritances opposites withinNamespace: self namespace2FullReferee) 
				equalsTo: (Set with: self c12FullReferencerInSide))
]

{ #category : #inheritance }
FAMIXClassNavigationChefTest >> testInheritedClassesIntoMyNamespace [ 
	 
	self 
		assert: 
			(self c11FullRefereeOutSide queryOutgoingInheritances opposites withinMyNamespace  
				equalsTo: (Set with: self c12FullReferencerInSide))
]

{ #category : #inheritance }
FAMIXClassNavigationChefTest >> testInheritedClassesIntoMyPackage [ 
	 
	self 
		assert: self c11FullRefereeOutSide queryOutgoingInheritances opposites withinMyPackage isEmpty
]

{ #category : #inheritance }
FAMIXClassNavigationChefTest >> testInheritedClassesOutOfMyNamespace [ 
	 
	self 
		assert: 
			self c11FullRefereeOutSide queryOutgoingInheritances opposites outOfMyNamespace isEmpty
]

{ #category : #inheritance }
FAMIXClassNavigationChefTest >> testInheritedClassesOutOfMyPackage [ 
	 
	self 
		assert: 
			(self c11FullRefereeOutSide queryOutgoingInheritances opposites outOfMyPackage 
				equalsTo: (Set with: self c12FullReferencerInSide))
]

{ #category : #inheritance }
FAMIXClassNavigationChefTest >> testInheritedNamespaces [
	self
		assert:
			(self c11FullRefereeOutSide queryOutgoingInheritances
				atScope: FmxNGTNamespace) size
		equals: 1.
	self
		assert:
			((self c11FullRefereeOutSide queryOutgoingInheritances
				atScope: FmxNGTNamespace) includes: self namespace2FullReferee)
]

{ #category : #inheritance }
FAMIXClassNavigationChefTest >> testInheritedPackages [
	| p6 |
	p6 := self packageP6InteractedReferee.
	self
		assert:
			((self c11FullRefereeOutSide queryOutgoingInheritances opposites
				atScope: FmxNGTPackage) equalsTo: (Set with: p6))
]

{ #category : #allOutgoingInvocations }
FAMIXClassNavigationChefTest >> testOppositesOfCompositeQueryResult [
	self assert: self c6FullReferencerInSideOutSide queryAllOutgoing opposites size equals: 7.
	self
		assert:
			(self c6FullReferencerInSideOutSide queryAllOutgoing opposites
				equalsTo:
					(Set new
						add: self c3ReferencerInSideRefereeOutSide;
						add: self c5ReferencerInSideRefereeInSide;
						add: self c11FullRefereeOutSide;
						add: (self getMethod: 'm2p5c11InstCreation1()' from: self c11FullRefereeOutSide);
						add: (self getMethod: 'm1p3c5Mtd1()' from: self c5ReferencerInSideRefereeInSide);
						add: (self getMethod: 'm1p2c3Mtd3()' from: self c3ReferencerInSideRefereeOutSide);
						add: self cObject;
						yourself))
]

{ #category : #'MooseKGB-TestFamix3-integralTests' }
FAMIXClassNavigationChefTest >> testOutgoingReferencesAreEitherPotentialOrSureOrStatic [
	| modelClasses |
	modelClasses := self model allClasses.
	self flag: 'See testIncomingReferencesAreEitherPotentialOrSureOrStatic'.
	self assert: (modelClasses allSatisfy: [ :referencer | (referencer queryAllOutgoing atScope: FmxNGTType) includesAll: (referencer queryAllOutgoingInvocations atScope: FmxNGTType) ])
]

{ #category : #allDependencies }
FAMIXClassNavigationChefTest >> testProviderClasses [
	self assert: (self c15FullReferencerOutSide queryAllOutgoing atScope: FmxNGTType) size equals: 3.
	self
		assert:
			((self c15FullReferencerOutSide queryAllOutgoing atScope: FmxNGTType)
				equalsTo:
					(Set new
						add: self c14ReferencerOutSideRefereeOutSide;
						add: self c18FullRefereeInSideOutSide;
						add: self c19FullRefereeOutSide;
						yourself))
]

{ #category : #allDependencies }
FAMIXClassNavigationChefTest >> testProviderClassesInto [
	| p11 |
	p11 := self packageP11FullReferee.
	self assert: (((self c15FullReferencerOutSide queryAllOutgoing atScope: FmxNGTType) withinPackage: p11) equalsTo: (Set with: self c19FullRefereeOutSide)).
	self assert: (((self c15FullReferencerOutSide queryAllOutgoing atScope: FmxNGTType) withinNamespace: self namespace6InteractedReferee) equalsTo: (Set with: self c19FullRefereeOutSide))
]

{ #category : #allDependencies }
FAMIXClassNavigationChefTest >> testProviderClassesIntoMyNamespace [
	self assert: (self c15FullReferencerOutSide queryAllOutgoing atScope: FmxNGTType) withinMyNamespace isEmpty
]

{ #category : #allDependencies }
FAMIXClassNavigationChefTest >> testProviderClassesIntoMyPackage [
	self assert: (self c15FullReferencerOutSide queryAllOutgoing atScope: FmxNGTType) withinMyPackage isEmpty
]

{ #category : #allDependencies }
FAMIXClassNavigationChefTest >> testProviderClassesOutOfMyNamespace [
	self assert: (self c15FullReferencerOutSide queryAllOutgoing atScope: FmxNGTType) outOfMyNamespace size equals: 3.
	self
		assert:
			((self c15FullReferencerOutSide queryAllOutgoing atScope: FmxNGTType) outOfMyNamespace
				equalsTo:
					(Set new
						add: self c14ReferencerOutSideRefereeOutSide;
						add: self c18FullRefereeInSideOutSide;
						add: self c19FullRefereeOutSide;
						yourself))
]

{ #category : #allDependencies }
FAMIXClassNavigationChefTest >> testProviderClassesOutOfMyPackage [
	self assert: (self c15FullReferencerOutSide queryAllOutgoing atScope: FmxNGTType) outOfMyPackage size equals: 3.
	self
		assert:
			((self c15FullReferencerOutSide queryAllOutgoing atScope: FmxNGTType) outOfMyPackage
				equalsTo:
					(Set new
						add: self c14ReferencerOutSideRefereeOutSide;
						add: self c18FullRefereeInSideOutSide;
						add: self c19FullRefereeOutSide;
						yourself))
]

{ #category : #allDependencies }
FAMIXClassNavigationChefTest >> testProviderNamespace [
	self assert: (self c15FullReferencerOutSide queryAllOutgoing atScope: FmxNGTNamespace) size equals: 3.
	self
		assert:
			((self c15FullReferencerOutSide queryAllOutgoing atScope: FmxNGTNamespace)
				equalsTo:
					(Set new
						add: self namespace3ReferencerReferee;
						add: self namespace5InteractedReferencer;
						add: self namespace6InteractedReferee;
						yourself))
]

{ #category : #allDependencies }
FAMIXClassNavigationChefTest >> testProviderPackages [
	| p10 p11 p7 pEx |
	p10 := self packageP10InteractedReferee.
	p11 := self packageP11FullReferee.
	p7 := self packageP7ReferencerReferee.
	pEx := self packagePExtensions.
	self assert: (self c15FullReferencerOutSide queryAllOutgoing atScope: FmxNGTPackage) size equals: 4.
	self
		assert:
			((self c15FullReferencerOutSide queryAllOutgoing atScope: FmxNGTPackage)
				equalsTo:
					(Set new
						add: p10;
						add: p11;
						add: pEx;
						add: p7;
						yourself))
]

{ #category : #allOutgoingInvocations }
FAMIXClassNavigationChefTest >> testReferencedClasses [
	self
		assert:
			(self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FmxNGTType) size
		equals: 3.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FmxNGTType)
				equalsTo:
					(Set new
						add: self c3ReferencerInSideRefereeOutSide;
						add: self c5ReferencerInSideRefereeInSide;
						add: self c11FullRefereeOutSide;
						yourself))
]

{ #category : #allOutgoingInvocations }
FAMIXClassNavigationChefTest >> testReferencedClassesInto [
	| p3 |
	p3 := self packageP3InteractedReferencer.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FmxNGTType) withinPackage: p3) size
		equals: 1.
	self
		assert:
			(((self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FmxNGTType) withinPackage: p3)
				equalsTo: (Set with: self c5ReferencerInSideRefereeInSide))
]

{ #category : #allOutgoingInvocations }
FAMIXClassNavigationChefTest >> testReferencedClassesIntoMyNamespace [
	self
		assert:
			(self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FmxNGTType) withinMyNamespace size
		equals: 2.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FmxNGTType) withinMyNamespace
				equalsTo:
					(Set new
						add: self c3ReferencerInSideRefereeOutSide;
						add: self c5ReferencerInSideRefereeInSide;
						yourself))
]

{ #category : #allOutgoingInvocations }
FAMIXClassNavigationChefTest >> testReferencedClassesIntoMyPackage [
	self
		assert: 1
		equals:
			(self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FmxNGTType) withinMyPackage size.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FmxNGTType) withinMyPackage
				equalsTo:
					(Set new
						add: self c5ReferencerInSideRefereeInSide;
						yourself))
]

{ #category : #allOutgoingInvocations }
FAMIXClassNavigationChefTest >> testReferencedClassesOutOfMyNamespace [
	self
		assert: 1
		equals:
			(self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FmxNGTType) outOfMyNamespace size.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FmxNGTType) outOfMyNamespace
				equalsTo:
					(Set new
						add: self c11FullRefereeOutSide;
						yourself))
]

{ #category : #allOutgoingInvocations }
FAMIXClassNavigationChefTest >> testReferencedClassesOutOfMyPackage [
	self
		assert: 2
		equals:
			(self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FmxNGTType) outOfMyPackage size.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FmxNGTType) outOfMyPackage
				equalsTo:
					(Set
						with: self c3ReferencerInSideRefereeOutSide
						with: self c11FullRefereeOutSide))
]

{ #category : #allOutgoingInvocations }
FAMIXClassNavigationChefTest >> testReferencedMethods [
	| c11InstCreation1 c3m3 c5m1 |
	c11InstCreation1 := self getMethod: 'm2p5c11InstCreation1()' from: self c11FullRefereeOutSide.
	c3m3 := self getMethod: 'm1p2c3Mtd3()' from: self c3ReferencerInSideRefereeOutSide.
	c5m1 := self getMethod: 'm1p3c5Mtd1()' from: self c5ReferencerInSideRefereeInSide.
	self assert: self c6FullReferencerInSideOutSide queryAllOutgoingInvocations opposites size equals: 3.
	self
		assert:
			(self c6FullReferencerInSideOutSide queryAllOutgoingInvocations opposites
				equalsTo:
					(Set new
						add: c11InstCreation1;
						add: c3m3;
						add: c5m1;
						yourself))
]

{ #category : #allOutgoingInvocations }
FAMIXClassNavigationChefTest >> testReferencedNamespaces [
	self
		assert:
			(self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FmxNGTNamespace) size
		equals: 2.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FmxNGTNamespace)
				equalsTo:
					(Set new
						add: self namespace1InteractedReferencerReferee;
						add: self namespace2FullReferee;
						yourself))
]

{ #category : #allOutgoingInvocations }
FAMIXClassNavigationChefTest >> testReferencedPackages [
	self
		assert:
			(self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FmxNGTPackage) size
		equals: 3.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FmxNGTPackage)
				equalsTo:
					(Set new
						add: self packageP2InteractedReferencerReferee;
						add: self packageP3InteractedReferencer;
						add: self packageP5FullReferee;
						yourself))
]

{ #category : #allIncomingInvocations }
FAMIXClassNavigationChefTest >> testReferencingClasses [
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTType) size
		equals: 1.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTType)
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTType) size
		equals: 3.
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTType)
				equalsTo:
					(Set new
						add: self c1FullReferencerOutSide;
						add: self c6FullReferencerInSideOutSide;
						add: self c14ReferencerOutSideRefereeOutSide;
						yourself))
]

{ #category : #allIncomingInvocations }
FAMIXClassNavigationChefTest >> testReferencingClassesInto [
	| p1 p2 |
	p1 := self packageP1FullReferencer.
	p2 := self packageP2InteractedReferencerReferee.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTType) withinPackage: p2) size
		equals: 1.
	self
		assert:
			(((self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTType) withinPackage: p2)
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTType)
				withinNamespace: self namespace1InteractedReferencerReferee) size
		equals: 1.
	self
		assert:
			(((self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTType)
				withinNamespace: self namespace1InteractedReferencerReferee)
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			(((self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTType) withinPackage: p1)
				equalsTo: (Set with: self c1FullReferencerOutSide)).
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTType)
				withinNamespace: self namespace1InteractedReferencerReferee) size
		equals: 2.
	self
		assert:
			(((self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTType)
				withinNamespace: self namespace1InteractedReferencerReferee)
				equalsTo:
					(Set new
						add: self c1FullReferencerOutSide;
						add: self c6FullReferencerInSideOutSide;
						yourself))
]

{ #category : #allIncomingInvocations }
FAMIXClassNavigationChefTest >> testReferencingClassesIntoMyNamespace [
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTType) withinMyNamespace isEmpty.
	self
		assert:
			(self c13FullRefereeInSideOutSide queryAllIncomingInvocations
				atScope: FmxNGTType) withinMyNamespace size
		equals: 2.
	self
		assert:
			((self c13FullRefereeInSideOutSide queryAllIncomingInvocations
				atScope: FmxNGTType) withinMyNamespace
				equalsTo:
					(Set new
						add: self c12FullReferencerInSide;
						add: self c13FullRefereeInSideOutSide;
						yourself))
]

{ #category : #allIncomingInvocations }
FAMIXClassNavigationChefTest >> testReferencingClassesIntoMyPackage [
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTType) withinMyPackage isEmpty.
	self
		assert:
			(self c13FullRefereeInSideOutSide queryAllIncomingInvocations
				atScope: FmxNGTType) withinMyPackage size
		equals: 2.
	self
		assert:
			((self c13FullRefereeInSideOutSide queryAllIncomingInvocations
				atScope: FmxNGTType) withinMyPackage
				equalsTo:
					(Set new
						add: self c12FullReferencerInSide;
						add: self c13FullRefereeInSideOutSide;
						yourself))
]

{ #category : #allIncomingInvocations }
FAMIXClassNavigationChefTest >> testReferencingClassesOutOfMyNamespace [
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTType) outOfMyNamespace size
		equals: 1.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTType) outOfMyNamespace
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTType) outOfMyNamespace size
		equals: 1.
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTType) outOfMyNamespace
				equalsTo:
					(Set new
						add: self c14ReferencerOutSideRefereeOutSide;
						yourself))
]

{ #category : #allIncomingInvocations }
FAMIXClassNavigationChefTest >> testReferencingClassesOutOfMyPackage [
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTType) outOfMyPackage size
		equals: 1.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTType) outOfMyPackage
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTType) outOfMyPackage size
		equals: 3.
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTType) outOfMyPackage
				equalsTo:
					(Set new
						add: self c1FullReferencerOutSide;
						add: self c6FullReferencerInSideOutSide;
						add: self c14ReferencerOutSideRefereeOutSide;
						yourself))
]

{ #category : #allIncomingInvocations }
FAMIXClassNavigationChefTest >> testReferencingMethods [
	| c2m1 c2m2 |
	c2m1 := self getMethod: 'm1p2c2Mtd1()' from: self c2ReferencerOutSideRefereeInSide.
	c2m2 := self getMethod: 'm1p2c2Mtd2()' from: self c2ReferencerOutSideRefereeInSide.
	self assert: self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations opposites size equals: 2.
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations opposites
				equalsTo:
					(Set new
						add: c2m1;
						add: c2m2;
						yourself))
]

{ #category : #allIncomingInvocations }
FAMIXClassNavigationChefTest >> testReferencingNamespaces [
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTNamespace) size
		equals: 2.
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTNamespace)
				equalsTo:
					(Set new
						add: self namespace3ReferencerReferee;
						add: self namespace1InteractedReferencerReferee;
						yourself))
]

{ #category : #allIncomingInvocations }
FAMIXClassNavigationChefTest >> testReferencingPackages [
	| p1 p3 p7 |
	p1 := self packageP1FullReferencer.
	p3 := self packageP3InteractedReferencer.
	p7 := self packageP7ReferencerReferee.
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTPackage) size
		equals: 3.
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations
				atScope: FmxNGTPackage)
				equalsTo:
					(Set new
						add: p1;
						add: p3;
						add: p7;
						yourself))
]

{ #category : #allOutgoingInvocations }
FAMIXClassNavigationChefTest >> testSourceMethodsInReferencedMethods [

	self assert: 2
		equals: self c6FullReferencerInSideOutSide queryAllOutgoingInvocations outOfMyNamespace sourceMethods size.
	self assert: (self c6FullReferencerInSideOutSide queryAllOutgoingInvocations outOfMyNamespace sourceMethods
		equalsTo: (Set
			with: (self getMethod: 'm1p3c6Mtd1()' from: self c6FullReferencerInSideOutSide)
			with: (self getMethod: 'm1p3c6Mtd2()' from: self c6FullReferencerInSideOutSide) ))
]

{ #category : #references }
FAMIXClassNavigationChefTest >> testSourceMethodsInStaticReferencedClasses [
	self assert: self c6FullReferencerInSideOutSide queryOutgoingReferences withinMyPackage sources size equals: 1.
	self
		assert:
			(self c6FullReferencerInSideOutSide queryOutgoingReferences withinMyPackage sources
				equalsTo: (Set with: (self getMethod: 'm1p3c6Mtd2()' from: self c6FullReferencerInSideOutSide)))
]

{ #category : #staticDependencies }
FAMIXClassNavigationChefTest >> testStaticClientClasses [
	self
		assert:
			((self c11FullRefereeOutSide queryStaticIncomingAssociations
				atScope: FmxNGTType)
				equalsTo:
					(Set new
						add: self c3ReferencerInSideRefereeOutSide;
						add: self c14ReferencerOutSideRefereeOutSide;
						add: self c6FullReferencerInSideOutSide;
						add: self c1FullReferencerOutSide;
						add: self c11FullRefereeOutSide;
						yourself))
]

{ #category : #staticDependencies }
FAMIXClassNavigationChefTest >> testStaticClientClassesInto [
	| p3 |
	p3 := self packageP3InteractedReferencer.
	self
		assert:
			(((self c11FullRefereeOutSide queryStaticIncomingAssociations
				atScope: FmxNGTType)
				withinNamespace: self namespace1InteractedReferencerReferee)
				equalsTo:
					(Set new
						add: self c3ReferencerInSideRefereeOutSide;
						add: self c6FullReferencerInSideOutSide;
						add: self c1FullReferencerOutSide;
						yourself)).
	self
		assert:
			(((self c11FullRefereeOutSide queryStaticIncomingAssociations
				atScope: FmxNGTType) withinPackage: p3)
				equalsTo:
					(Set new
						add: self c6FullReferencerInSideOutSide;
						yourself))
]

{ #category : #staticDependencies }
FAMIXClassNavigationChefTest >> testStaticClientClassesIntoMyNamespace [
	self
		assert:
			(self c11FullRefereeOutSide queryStaticIncomingAssociations
				atScope: FmxNGTType) withinMyNamespace size
		equals: 1
]

{ #category : #staticDependencies }
FAMIXClassNavigationChefTest >> testStaticClientClassesIntoMyPackage [
	self
		assert:
			(self c11FullRefereeOutSide queryStaticIncomingAssociations
				atScope: FmxNGTType) withinMyPackage size
		equals: 1
]

{ #category : #staticDependencies }
FAMIXClassNavigationChefTest >> testStaticClientClassesOutOfMyNamespace [
	self
		assert:
			((self c11FullRefereeOutSide queryStaticIncomingAssociations
				atScope: FmxNGTType) outOfMyNamespace
				equalsTo:
					(Set new
						add: self c3ReferencerInSideRefereeOutSide;
						add: self c14ReferencerOutSideRefereeOutSide;
						add: self c6FullReferencerInSideOutSide;
						add: self c1FullReferencerOutSide;
						yourself))
]

{ #category : #staticDependencies }
FAMIXClassNavigationChefTest >> testStaticClientClassesOutOfMyPackage [
	self
		assert:
			((self c11FullRefereeOutSide queryStaticIncomingAssociations
				atScope: FmxNGTType) outOfMyPackage
				equalsTo:
					(Set new
						add: self c3ReferencerInSideRefereeOutSide;
						add: self c14ReferencerOutSideRefereeOutSide;
						add: self c6FullReferencerInSideOutSide;
						add: self c1FullReferencerOutSide;
						yourself))
]

{ #category : #staticDependencies }
FAMIXClassNavigationChefTest >> testStaticClientNamespaces [
	self
		assert:
			((self c11FullRefereeOutSide queryStaticIncomingAssociations
				atScope: FmxNGTNamespace)
				equalsTo:
					(Set new
						add: self namespace1InteractedReferencerReferee;
						add: self namespace3ReferencerReferee;
						add: self namespace2FullReferee;
						yourself))
]

{ #category : #staticDependencies }
FAMIXClassNavigationChefTest >> testStaticClientPackages [
	| p1 p2 p3 p7 |
	p1 := self packageP1FullReferencer.
	p2 := self packageP2InteractedReferencerReferee.
	p3 := self packageP3InteractedReferencer.
	p7 := self packageP7ReferencerReferee.
	self
		assert:
			((self c11FullRefereeOutSide queryStaticIncomingAssociations
				atScope: FmxNGTPackage)
				equalsTo:
					(Set new
						add: p1;
						add: p2;
						add: p3;
						add: p7;
						add: self packageP5FullReferee;
						yourself))
]

{ #category : #staticDependencies }
FAMIXClassNavigationChefTest >> testStaticProviderClasses [
	self
		assert:
			((self c11FullRefereeOutSide queryStaticOutgoingAssociations
				atScope: FmxNGTType)
				equalsTo:
					(Set
						with: self c12FullReferencerInSide
						with: self c11FullRefereeOutSide))
]

{ #category : #staticDependencies }
FAMIXClassNavigationChefTest >> testStaticProviderClassesInto [
	| p6 |
	p6 := self packageP6InteractedReferee.
	self
		assert:
			(((self c11FullRefereeOutSide queryStaticOutgoingAssociations
				atScope: FmxNGTType) withinPackage: p6)
				equalsTo: (Set with: self c12FullReferencerInSide)).
	self
		assert:
			(((self c11FullRefereeOutSide queryStaticOutgoingAssociations
				atScope: FmxNGTType) withinNamespace: self namespace2FullReferee)
				equalsTo:
					(Set
						with: self c12FullReferencerInSide
						with: self c11FullRefereeOutSide))
]

{ #category : #staticDependencies }
FAMIXClassNavigationChefTest >> testStaticProviderClassesIntoMyNamespace [
	self
		assert:
			((self c11FullRefereeOutSide queryStaticOutgoingAssociations
				atScope: FmxNGTType) withinMyNamespace
				equalsTo:
					(Set
						with: self c12FullReferencerInSide
						with: self c11FullRefereeOutSide))
]

{ #category : #staticDependencies }
FAMIXClassNavigationChefTest >> testStaticProviderClassesIntoMyPackage [
	self
		assert:
			(self c11FullRefereeOutSide queryStaticOutgoingAssociations
				atScope: FmxNGTType) withinMyPackage size
		equals: 1
]

{ #category : #staticDependencies }
FAMIXClassNavigationChefTest >> testStaticProviderClassesOutOfMyNamespace [
	self
		assert:
			(self c11FullRefereeOutSide queryStaticOutgoingAssociations
				atScope: FmxNGTType) outOfMyNamespace isEmpty
]

{ #category : #staticDependencies }
FAMIXClassNavigationChefTest >> testStaticProviderClassesOutOfMyPackage [
	self
		assert:
			((self c11FullRefereeOutSide queryStaticOutgoingAssociations
				atScope: FmxNGTType) outOfMyPackage
				equalsTo: (Set with: self c12FullReferencerInSide))
]

{ #category : #staticDependencies }
FAMIXClassNavigationChefTest >> testStaticProviderNamespaces [
	self
		assert:
			(self c11FullRefereeOutSide queryStaticOutgoingAssociations
				atScope: FmxNGTNamespace) size
		equals: 1
]

{ #category : #staticDependencies }
FAMIXClassNavigationChefTest >> testStaticProviderPackages [
	| p6 |
	p6 := self packageP6InteractedReferee.
	self
		assert:
			((self c11FullRefereeOutSide queryStaticOutgoingAssociations
				atScope: FmxNGTPackage)
				equalsTo: (Set with: p6 with: self packageP5FullReferee))
]

{ #category : #references }
FAMIXClassNavigationChefTest >> testStaticReferencedClasses [
	self assert: self c6FullReferencerInSideOutSide queryOutgoingReferences opposites size equals: 3.
	self
		assert:
			(self c6FullReferencerInSideOutSide queryOutgoingReferences opposites
				equalsTo:
					(Set new
						add: self c3ReferencerInSideRefereeOutSide;
						add: self c5ReferencerInSideRefereeInSide;
						add: self c11FullRefereeOutSide;
						yourself))
]

{ #category : #references }
FAMIXClassNavigationChefTest >> testStaticReferencedClassesInto [
	| p3 |
	p3 := self packageP3InteractedReferencer.
	self assert: (self c6FullReferencerInSideOutSide queryOutgoingReferences opposites withinPackage: p3) size equals: 1.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryOutgoingReferences opposites withinPackage: p3)
				equalsTo:
					(Set new
						add: self c5ReferencerInSideRefereeInSide;
						yourself))
]

{ #category : #references }
FAMIXClassNavigationChefTest >> testStaticReferencedClassesIntoMyNamespace [
	self assert: self c6FullReferencerInSideOutSide queryOutgoingReferences opposites withinMyNamespace size equals: 2.
	self
		assert:
			(self c6FullReferencerInSideOutSide queryOutgoingReferences opposites withinMyNamespace
				equalsTo:
					(Set new
						add: self c3ReferencerInSideRefereeOutSide;
						add: self c5ReferencerInSideRefereeInSide;
						yourself))
]

{ #category : #references }
FAMIXClassNavigationChefTest >> testStaticReferencedClassesIntoMyPackage [
	self
		assert: 1
		equals:
			self c6FullReferencerInSideOutSide queryOutgoingReferences opposites
				withinMyPackage size.
	self
		assert:
			(self c6FullReferencerInSideOutSide queryOutgoingReferences opposites
				withinMyPackage
				equalsTo:
					(Set new
						add: self c5ReferencerInSideRefereeInSide;
						yourself)).
	self
		assert: 1
		equals:
			self c6FullReferencerInSideOutSide queryOutgoingReferences
				withinMyPackage size.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryOutgoingReferences
				withinMyPackage atScope: FmxNGTType)
				equalsTo:
					self c6FullReferencerInSideOutSide queryOutgoingReferences opposites
						withinMyPackage)
]

{ #category : #references }
FAMIXClassNavigationChefTest >> testStaticReferencedClassesOutOfMyNamespace [
	self
		assert: 1
		equals:
			self c6FullReferencerInSideOutSide queryOutgoingReferences opposites
				outOfMyNamespace size.
	self
		assert:
			(self c6FullReferencerInSideOutSide queryOutgoingReferences opposites
				outOfMyNamespace
				equalsTo:
					(Set new
						add: self c11FullRefereeOutSide;
						yourself)).
	self
		assert: 1
		equals:
			self c6FullReferencerInSideOutSide queryOutgoingReferences
				outOfMyNamespace size.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryOutgoingReferences
				outOfMyNamespace atScope: FmxNGTType)
				equalsTo:
					self c6FullReferencerInSideOutSide queryOutgoingReferences opposites
						outOfMyNamespace)
]

{ #category : #references }
FAMIXClassNavigationChefTest >> testStaticReferencedClassesOutOfMyPackage [
	self assert: self c6FullReferencerInSideOutSide queryOutgoingReferences opposites outOfMyPackage size equals: 2.
	self
		assert:
			(self c6FullReferencerInSideOutSide queryOutgoingReferences opposites outOfMyPackage
				equalsTo:
					(Set new
						add: self c3ReferencerInSideRefereeOutSide;
						add: self c11FullRefereeOutSide;
						yourself))
]

{ #category : #references }
FAMIXClassNavigationChefTest >> testStaticReferencedNamespaces [
	self
		assert:
			(self c6FullReferencerInSideOutSide queryOutgoingReferences
				atScope: FmxNGTNamespace) size
		equals: 2.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryOutgoingReferences
				atScope: FmxNGTNamespace)
				equalsTo:
					(Set new
						add: self namespace2FullReferee;
						add: self namespace1InteractedReferencerReferee;
						yourself))
]

{ #category : #references }
FAMIXClassNavigationChefTest >> testStaticReferencedPackages [
	| p2 p5 |
	p2 := self packageP2InteractedReferencerReferee.
	p5 := self packageP5FullReferee.
	self
		assert:
			(self c6FullReferencerInSideOutSide queryOutgoingReferences
				atScope: FmxNGTPackage) size
		equals: 3.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryOutgoingReferences
				atScope: FmxNGTPackage)
				equalsTo:
					(Set new
						add: p2;
						add: p5;
						add: self packageP3InteractedReferencer;
						yourself))
]

{ #category : #references }
FAMIXClassNavigationChefTest >> testStaticReferencingClasses [
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTType) size
		equals: 1.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTType)
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTType) size
		equals: 2.
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTType)
				equalsTo:
					(Set new
						add: self c6FullReferencerInSideOutSide;
						add: self c14ReferencerOutSideRefereeOutSide;
						yourself))
]

{ #category : #references }
FAMIXClassNavigationChefTest >> testStaticReferencingClassesInto [
	| p1 p2 |
	p1 := self packageP1FullReferencer.
	p2 := self packageP2InteractedReferencerReferee.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTType) withinPackage: p2) size
		equals: 1.
	self
		assert:
			(((self c14ReferencerOutSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTType) withinPackage: p2)
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTType)
				withinNamespace: self namespace1InteractedReferencerReferee) size
		equals: 1.
	self
		assert:
			(((self c14ReferencerOutSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTType)
				withinNamespace: self namespace1InteractedReferencerReferee)
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTType) withinPackage: p1) isEmpty.
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTType)
				withinNamespace: self namespace1InteractedReferencerReferee) size
		equals: 1.
	self
		assert:
			(((self c3ReferencerInSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTType)
				withinNamespace: self namespace1InteractedReferencerReferee)
				equalsTo:
					(Set new
						add: self c6FullReferencerInSideOutSide;
						yourself))
]

{ #category : #references }
FAMIXClassNavigationChefTest >> testStaticReferencingClassesIntoMyNamespace [
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTType) withinMyNamespace isEmpty.
	self
		assert:
			(self c13FullRefereeInSideOutSide queryIncomingReferences
				atScope: FmxNGTType) withinMyNamespace size
		equals: 1.
	self
		assert:
			((self c13FullRefereeInSideOutSide queryIncomingReferences
				atScope: FmxNGTType) withinMyNamespace
				equalsTo:
					(Set new
						add: self c12FullReferencerInSide;
						yourself))
]

{ #category : #references }
FAMIXClassNavigationChefTest >> testStaticReferencingClassesIntoMyPackage [
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTType) withinMyPackage isEmpty.
	self
		assert:
			(self c13FullRefereeInSideOutSide queryIncomingReferences
				atScope: FmxNGTType) withinMyPackage size
		equals: 1.
	self
		assert:
			((self c13FullRefereeInSideOutSide queryIncomingReferences
				atScope: FmxNGTType) withinMyPackage
				equalsTo:
					(Set new
						add: self c12FullReferencerInSide;
						yourself))
]

{ #category : #references }
FAMIXClassNavigationChefTest >> testStaticReferencingClassesOutOfMyNamespace [
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTType) outOfMyNamespace size
		equals: 1.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTType) outOfMyNamespace
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTType) outOfMyNamespace size
		equals: 1.
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTType) outOfMyNamespace
				equalsTo:
					(Set new
						add: self c14ReferencerOutSideRefereeOutSide;
						yourself))
]

{ #category : #references }
FAMIXClassNavigationChefTest >> testStaticReferencingClassesOutOfMyPackage [
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTType) outOfMyPackage size
		equals: 1.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTType) outOfMyPackage
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTType) outOfMyPackage size
		equals: 2.
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTType) outOfMyPackage
				equalsTo:
					(Set new
						add: self c6FullReferencerInSideOutSide;
						add: self c14ReferencerOutSideRefereeOutSide;
						yourself))
]

{ #category : #references }
FAMIXClassNavigationChefTest >> testStaticReferencingMethods [
	| c2m1 c2m2 |
	c2m1 := self getMethod: 'm1p2c2Mtd1()' from: self c2ReferencerOutSideRefereeInSide.
	c2m2 := self getMethod: 'm1p2c2Mtd2()' from: self c2ReferencerOutSideRefereeInSide.
	self assert: self c14ReferencerOutSideRefereeOutSide queryIncomingReferences opposites size equals: 2.
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryIncomingReferences opposites
				equalsTo:
					(Set new
						add: c2m1;
						add: c2m2;
						yourself))
]

{ #category : #references }
FAMIXClassNavigationChefTest >> testStaticReferencingNamespaces [
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTNamespace) size
		equals: 2.
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTNamespace)
				equalsTo:
					(Set new
						add: self namespace3ReferencerReferee;
						add: self namespace1InteractedReferencerReferee;
						yourself))
]

{ #category : #references }
FAMIXClassNavigationChefTest >> testStaticReferencingPackages [
	| p3 p7 |
	p3 := self packageP3InteractedReferencer.
	p7 := self packageP7ReferencerReferee.
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTPackage) size
		equals: 2.
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryIncomingReferences
				atScope: FmxNGTPackage)
				equalsTo:
					(Set new
						add: p3;
						add: p7;
						yourself))
]

{ #category : #sureOutgoingInvocations }
FAMIXClassNavigationChefTest >> testSureReferencedClasses [
	self
		assert: 2
		equals:
			(self c14ReferencerOutSideRefereeOutSide querySureOutgoingInvocations
				atScope: FmxNGTType) size.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide querySureOutgoingInvocations
				atScope: FmxNGTType)
				equalsTo:
					(Set
						with: self c13FullRefereeInSideOutSide
						with: self c11FullRefereeOutSide))
]

{ #category : #'MooseKGB-TestFamix3-integralTests' }
FAMIXClassNavigationChefTest >> testSureReferencedClassesIncludeAllStaticReferencedClasses [
	self assert: (self model allClasses allSatisfy: [ :referencer | (referencer queryAllOutgoing atScope: FmxNGTType) includesAll: (referencer queryStaticOutgoingAssociations atScope: FmxNGTType) ])
]

{ #category : #sureOutgoingInvocations }
FAMIXClassNavigationChefTest >> testSureReferencedClassesInto [
	| p5 |
	p5 := self packageP5FullReferee.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide querySureOutgoingInvocations
				atScope: FmxNGTType) withinPackage: p5) size
		equals: 1.
	self
		assert:
			(((self c14ReferencerOutSideRefereeOutSide
				querySureOutgoingInvocations atScope: FmxNGTType) withinPackage: p5)
				equalsTo:
					(Set new
						add: self c11FullRefereeOutSide;
						yourself))
]

{ #category : #sureOutgoingInvocations }
FAMIXClassNavigationChefTest >> testSureReferencedClassesIntoMyNamespace [
	self
		assert: 1
		equals:
			(self c16FullReferencerOutSideInSide querySureOutgoingInvocations
				atScope: FmxNGTType) withinMyNamespace size.
	self
		assert:
			((self c16FullReferencerOutSideInSide querySureOutgoingInvocations
				atScope: FmxNGTType) withinMyNamespace
				equalsTo:
					(Set
						with: self c18FullRefereeInSideOutSide
						with: self c18FullRefereeInSideOutSide))
]

{ #category : #sureOutgoingInvocations }
FAMIXClassNavigationChefTest >> testSureReferencedClassesIntoMyPackage [
	self
		assert: 1
		equals:
			(self c10FullReferencerInSide querySureOutgoingInvocations
				atScope: FmxNGTType) withinMyPackage size.
	self
		assert:
			((self c10FullReferencerInSide querySureOutgoingInvocations
				atScope: FmxNGTType) withinMyPackage
				equalsTo: (Set with: self c9FullRefereeInSide))
]

{ #category : #sureOutgoingInvocations }
FAMIXClassNavigationChefTest >> testSureReferencedClassesOutOfMyNamespace [
	self
		assert:
			(self c6FullReferencerInSideOutSide querySureOutgoingInvocations
				atScope: FmxNGTType) outOfMyNamespace size
		equals: 1.
	self
		assert:
			((self c6FullReferencerInSideOutSide querySureOutgoingInvocations
				atScope: FmxNGTType) outOfMyNamespace
				equalsTo:
					(Set new
						add: self c11FullRefereeOutSide;
						yourself))
]

{ #category : #sureOutgoingInvocations }
FAMIXClassNavigationChefTest >> testSureReferencedMethods [
	| c11InstCreation1 |
	c11InstCreation1 := self getMethod: 'm2p5c11InstCreation1()' from: self c11FullRefereeOutSide.
	self assert: self c6FullReferencerInSideOutSide querySureOutgoingInvocations opposites size equals: 1.
	self
		assert:
			(self c6FullReferencerInSideOutSide querySureOutgoingInvocations opposites
				equalsTo:
					(Set new
						add: c11InstCreation1;
						yourself))
]

{ #category : #sureOutgoingInvocations }
FAMIXClassNavigationChefTest >> testSureReferencedNamespaces [
	self
		assert:
			(self c6FullReferencerInSideOutSide querySureOutgoingInvocations
				atScope: FmxNGTNamespace) size
		equals: 1.
	self
		assert:
			((self c6FullReferencerInSideOutSide querySureOutgoingInvocations
				atScope: FmxNGTNamespace)
				equalsTo:
					(Set new
						add: self namespace2FullReferee;
						yourself))
]

{ #category : #'MooseKGB-TestFamix3-integralTests' }
FAMIXClassNavigationChefTest >> testSureReferencedNamespacesTest [
	| modelClasses |
	modelClasses := self model allClasses.
	modelClasses
		do: [ :each | 
			self
				assert: (each querySureOutgoingInvocations atScope: FmxNGTNamespace) size
				equals: (each querySureOutgoingInvocations atScope: FmxNGTNamespace) asSet size ].
	modelClasses
		do: [ :each | 
			self
				assert: (each querySureIncomingInvocations atScope: FmxNGTType) size
				equals: (each querySureIncomingInvocations atScope: FmxNGTType) asSet size ].
	modelClasses
		do: [ :each | 
			self
				assert: (each querySureIncomingInvocations atScope: FmxNGTNamespace) size
				equals: (each querySureIncomingInvocations atScope: FmxNGTNamespace) asSet size ]
]

{ #category : #sureOutgoingInvocations }
FAMIXClassNavigationChefTest >> testSureReferencedPackages [
	self
		assert: 2
		equals:
			(self c14ReferencerOutSideRefereeOutSide querySureOutgoingInvocations
				atScope: FmxNGTPackage) size.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide querySureOutgoingInvocations
				atScope: FmxNGTPackage)
				equalsTo:
					(Set
						with: self packageP6InteractedReferee
						with: self packageP5FullReferee))
]

{ #category : #sureIncomingInvocations }
FAMIXClassNavigationChefTest >> testSureReferencingClasses [
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations
				atScope: FmxNGTType) size
		equals: 1.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations
				atScope: FmxNGTType)
				equalsTo: (Set with: self c2ReferencerOutSideRefereeInSide)).
	self
		assert:
			(self c13FullRefereeInSideOutSide querySureIncomingInvocations
				atScope: FmxNGTType) size
		equals: 4.
	self
		assert:
			((self c13FullRefereeInSideOutSide querySureIncomingInvocations
				atScope: FmxNGTType)
				equalsTo:
					(Set
						with: self c1FullReferencerOutSide
						with: self c12FullReferencerInSide
						with: self c14ReferencerOutSideRefereeOutSide
						with: self c13FullRefereeInSideOutSide))
]

{ #category : #'MooseKGB-TestFamix3-integralTests' }
FAMIXClassNavigationChefTest >> testSureReferencingClassesIncludeAllStaticReferencingClasses [
	| modelClasses |
	modelClasses := self model allClasses.
	self assert: (modelClasses allSatisfy: [ :referencer | (referencer queryAllIncoming atScope: FmxNGTType) includesAll: (referencer queryStaticIncomingAssociations atScope: FmxNGTType) ])
]

{ #category : #sureIncomingInvocations }
FAMIXClassNavigationChefTest >> testSureReferencingClassesInto [
	| p1 p2 |
	p1 := self packageP1FullReferencer.
	p2 := self packageP2InteractedReferencerReferee.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations
				atScope: FmxNGTType) withinPackage: p2) size
		equals: 1.
	self
		assert:
			(((self c14ReferencerOutSideRefereeOutSide
				querySureIncomingInvocations atScope: FmxNGTType) withinPackage: p2)
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations
				atScope: FmxNGTType)
				withinNamespace: self namespace1InteractedReferencerReferee) size
		equals: 1.
	self
		assert:
			(((self c14ReferencerOutSideRefereeOutSide
				querySureIncomingInvocations atScope: FmxNGTType)
				withinNamespace: self namespace1InteractedReferencerReferee)
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide querySureIncomingInvocations
				atScope: FmxNGTType) withinPackage: p1) isEmpty.
	self
		assert:
			((self c19FullRefereeOutSide querySureIncomingInvocations
				atScope: FmxNGTType) withinNamespace: self namespace4FullReferencer)
				size
		equals: 1.
	self
		assert:
			(((self c19FullRefereeOutSide querySureIncomingInvocations
				atScope: FmxNGTType) withinNamespace: self namespace4FullReferencer)
				equalsTo:
					(Set new
						add: self c15FullReferencerOutSide;
						yourself))
]

{ #category : #sureIncomingInvocations }
FAMIXClassNavigationChefTest >> testSureReferencingClassesIntoMyNamespace [
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations
				atScope: FmxNGTType) withinMyNamespace isEmpty.
	self
		assert:
			(self c13FullRefereeInSideOutSide querySureIncomingInvocations
				atScope: FmxNGTType) withinMyNamespace size
		equals: 2.
	self
		assert:
			((self c13FullRefereeInSideOutSide querySureIncomingInvocations
				atScope: FmxNGTType) withinMyNamespace
				equalsTo:
					(Set new
						add: self c12FullReferencerInSide;
						add: self c13FullRefereeInSideOutSide;
						yourself))
]

{ #category : #sureIncomingInvocations }
FAMIXClassNavigationChefTest >> testSureReferencingClassesIntoMyPackage [
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations
				atScope: FmxNGTType) withinMyPackage isEmpty.
	self
		assert:
			(self c13FullRefereeInSideOutSide querySureIncomingInvocations
				atScope: FmxNGTType) withinMyPackage size
		equals: 2.
	self
		assert:
			((self c13FullRefereeInSideOutSide querySureIncomingInvocations
				atScope: FmxNGTType) withinMyPackage
				equalsTo:
					(Set new
						add: self c12FullReferencerInSide;
						add: self c13FullRefereeInSideOutSide;
						yourself))
]

{ #category : #sureIncomingInvocations }
FAMIXClassNavigationChefTest >> testSureReferencingClassesOutOfMyNamespace [
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations
				atScope: FmxNGTType) outOfMyNamespace size
		equals: 1.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations
				atScope: FmxNGTType) outOfMyNamespace
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			(self c19FullRefereeOutSide querySureIncomingInvocations
				atScope: FmxNGTType) outOfMyNamespace size
		equals: 2.
	self
		assert:
			((self c19FullRefereeOutSide querySureIncomingInvocations
				atScope: FmxNGTType) outOfMyNamespace
				equalsTo:
					(Set
						with: self c15FullReferencerOutSide
						with: self c16FullReferencerOutSideInSide))
]

{ #category : #sureIncomingInvocations }
FAMIXClassNavigationChefTest >> testSureReferencingClassesOutOfMyPackage [
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations
				atScope: FmxNGTType) outOfMyPackage size
		equals: 1.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations
				atScope: FmxNGTType) outOfMyPackage
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			(self c13FullRefereeInSideOutSide querySureIncomingInvocations
				atScope: FmxNGTType) outOfMyPackage size
		equals: 2.
	self
		assert:
			((self c13FullRefereeInSideOutSide querySureIncomingInvocations
				atScope: FmxNGTType) outOfMyPackage
				equalsTo:
					(Set new
						add: self c1FullReferencerOutSide;
						add: self c14ReferencerOutSideRefereeOutSide;
						yourself))
]

{ #category : #sureIncomingInvocations }
FAMIXClassNavigationChefTest >> testSureReferencingMethods [
	| c2m1 |
	c2m1 := self getMethod: 'm1p2c2Mtd1()' from: self c2ReferencerOutSideRefereeInSide.
	self assert: self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations opposites size equals: 1.
	self
		assert: (self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations opposites equalsTo: (Set with: c2m1))
]

{ #category : #sureIncomingInvocations }
FAMIXClassNavigationChefTest >> testSureReferencingNamespaces [
	self
		assert:
			(self c19FullRefereeOutSide querySureIncomingInvocations
				atScope: FmxNGTNamespace) size
		equals: 3.
	self
		assert:
			((self c19FullRefereeOutSide querySureIncomingInvocations
				atScope: FmxNGTNamespace)
				equalsTo:
					(Set
						with: self namespace4FullReferencer
						with: self namespace5InteractedReferencer
						with: self namespace6InteractedReferee))
]

{ #category : #sureIncomingInvocations }
FAMIXClassNavigationChefTest >> testSureReferencingPackages [
	| pEx p8 p9 p11 p12 |
	pEx := self packagePExtensions.
	p8 := self packageP8FullReferencer.
	p9 := self packageP9FullReferencer.
	p11 := self packageP11FullReferee.
	p12 := self packageP12FullReferencer.
	self assert: ((self c19FullRefereeOutSide querySureIncomingInvocations atScope: FmxNGTMethod) atScope: FmxNGTPackage) size equals: 5.
	self
		assert:
			((self c19FullRefereeOutSide querySureIncomingInvocations atScope: FmxNGTPackage)
				equalsTo:
					(Set
						with: pEx
						with: p8
						with: p9
						with: p11
						with: p12))
]

{ #category : #allIncomingInvocations }
FAMIXClassNavigationChefTest >> testTargetMethodsInReferencingMethods [
	| c14m2 c14m4 c14InstCreation |
	c14m2 := self getMethod: 'm3p7c14Mtd2()' from: self c14ReferencerOutSideRefereeOutSide.
	c14m4 := self getMethod: 'm3p7c14Mtd4()' from: self c14ReferencerOutSideRefereeOutSide.
	c14InstCreation := self getMethod: 'm3p7c14InstCreation()' from: self c14ReferencerOutSideRefereeOutSide.
	self assert: self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations targetMethods size equals: 3.
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations targetMethods
				equalsTo: (Set with: c14m2 with: c14m4 with: c14InstCreation))
]

{ #category : #union }
FAMIXClassNavigationChefTest >> testUnion [
	| queryResult anotherResult |
	queryResult := MooseQueryResult on: #FakeReceiver withAll: #(1 2 3).
	self assert: ((queryResult union: #(4 5)) equalsTo: #(1 2 3 4 5)).
	self assert: (queryResult union: #(4 5)) receiver equals: #FakeReceiver.
	anotherResult := MooseQueryResult on: #FakeReceiver withAll: #(4 5).
	self assert: ((queryResult union: anotherResult) equalsTo: #(1 2 3 4 5)).
	self assert: (queryResult union: anotherResult) receiver equals: #FakeReceiver
]

{ #category : #within }
FAMIXClassNavigationChefTest >> testWithin [
	| set |
	self assert: (self c1FullReferencerOutSide queryAllOutgoing within: self packageP2InteractedReferencerReferee) size equals: 1.
	self assert: (((self c1FullReferencerOutSide queryAllOutgoing within: self packageP2InteractedReferencerReferee) atScope: FmxNGTType) includes: self c3ReferencerInSideRefereeOutSide).
	self assert: (self c1FullReferencerOutSide queryAllOutgoingInvocations within: self c13FullRefereeInSideOutSide) opposites size equals: 3.
	set := Set new
		add: (self getMethod: 'm2p6c13Mtd2()' from: self c13FullRefereeInSideOutSide);
		add: (self getMethod: 'm2p6c13Mtd1:(Object)' from: self c13FullRefereeInSideOutSide);
		add: (self getMethod: 'm2p6c13InstCreation()' from: self c13FullRefereeInSideOutSide);
		yourself.
	self assert: ((self c1FullReferencerOutSide queryAllOutgoingInvocations within: self c13FullRefereeInSideOutSide) opposites equalsTo: set)
]
