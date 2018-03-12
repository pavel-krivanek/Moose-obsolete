Class {
	#name : #FAMIXObjectQueriesSelfLoopTest,
	#superclass : #AbstractFAMIXNavigationTest,
	#category : #'Moose-Tests-SmalltalkImporter-KGB-MooseChef'
}

{ #category : #'as yet unclassified' }
FAMIXObjectQueriesSelfLoopTest >> testClassObjectTests [
	self
		assert:
			((self c1FullReferencerOutSide queryAllIncomingInvocations
				atScope: FmxNGType) includes: self c1FullReferencerOutSide).
	self
		deny:
			((self c1FullReferencerOutSide queryAllIncomingInvocations
				atScope: FmxNGType) withoutSelfLoops
				includes: self c1FullReferencerOutSide)
]

{ #category : #'as yet unclassified' }
FAMIXObjectQueriesSelfLoopTest >> testPackageObjectTests [
	self
		assert:
			((self packageP1FullReferencer queryAllIncomingInvocations
				atScope: FmxNGPackage) includes: self packageP1FullReferencer).
	self
		deny:
			((self packageP1FullReferencer queryAllIncomingInvocations
				atScope: FmxNGType) withoutSelfLoops
				includes: self packageP1FullReferencer)
]
