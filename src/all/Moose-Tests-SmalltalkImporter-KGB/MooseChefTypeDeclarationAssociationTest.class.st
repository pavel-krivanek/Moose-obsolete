Class {
	#name : #MooseChefTypeDeclarationAssociationTest,
	#superclass : #TestCase,
	#instVars : [
		'model'
	],
	#category : #'Moose-Tests-SmalltalkImporter-KGB-MooseChef'
}

{ #category : #setup }
MooseChefTypeDeclarationAssociationTest class >> importModel [ 
	 
	| p1 p2 c1 c2 c3 m1 m2 m3 m4 a1 a2 |
	
	p1 := FmxNGPackage new name: 'p1' ; yourself.
	p2 := FmxNGPackage new name: 'p2' ; yourself.
	
	c1 := FmxNGClass new
			name: 'c1' ;
			container: p1 ;
			yourself.
	c2 := FmxNGClass new
			name: 'c2' ;
			container: p1 ;
			yourself.
	c3 := FmxNGClass new
			name: 'c3' ;
			container: p2 ;
			yourself.

	m1 := FmxNGMethod new
			name: 'm1' ;
			signature: 'm1()' ;
			container: c1 ;
			declaredType: c2 ;
			yourself.
	m2 := FmxNGMethod new
			name: 'm2' ;
			signature: 'm2()' ;
			container: c2 ;
			declaredType: c3 ;
			yourself.
	m3 := FmxNGMethod new
			name: 'm3' ;
			signature: 'm3()' ;
			container: c2 ;
			declaredType: c1 ;
			yourself.
	m4 := FmxNGMethod new
			name: 'm4' ;
			signature: 'm4()' ;
			container: c3 ;
			declaredType: c3 ;
			yourself.
			
	self model
		add: p1 ;
		add: p2 ;
		add: c1 ;
		add: c2 ;
		add: c3 ;
		add: m1 ;
		add: m2 ;
		add: m3 ;
		add: m4.
]

{ #category : #accessing }
MooseChefTypeDeclarationAssociationTest >> model [
	^ model
]

{ #category : #accessing }
MooseChefTypeDeclarationAssociationTest >> model: anObject [
	model := anObject
]

{ #category : #running }
MooseChefTypeDeclarationAssociationTest >> setUp [ 
	 
	| p1 p2 c1 c2 c3 m1 m2 m3 m4 at1 at2 pr1 pr2 v1 |
		
	p1 := FAMIXPackage new name: 'p1' ; stub: true ; yourself.
	p2 := FAMIXPackage new name: 'p2' ; stub: true ; yourself.

	c1 := FAMIXClass new
			stub: true ;
			name: 'C1' ;
			parentPackage: p1 ;
			yourself.
	c2 := FAMIXClass new
			stub: true ;
			name: 'C2' ;
			parentPackage: p1 ;
			yourself.
	c3 := FAMIXClass new
			stub: true ;
			name: 'C3' ;
			parentPackage: p2 ;
			yourself.

	m1 := FAMIXMethod new
			stub: true ;
			name: 'm1' ;
			signature: 'm1()' ;
			parentType: c1 ;
			parentPackage: p1 ;
			declaredType: c2 ;
			yourself.
	m2 := FAMIXMethod new
			stub: true ;
			name: 'm2' ;
			signature: 'm2()' ;
			parentType: c2 ;
			parentPackage: p1 ;
			declaredType: c3 ;
			yourself.
	m3 := FAMIXMethod new
			stub: true ;
			name: 'm3' ;
			signature: 'm3(C2,C3)' ;
			parentType: c2 ;
			parentPackage: p1 ;
			declaredType: c1 ;
			yourself.
	m4 := FAMIXMethod new
			stub: true ;
			name: 'm4' ;
			signature: 'm4()' ;
			parentType: c3 ;
			parentPackage: p2 ;
			declaredType: c3 ;
			yourself.
		
	v1 := FAMIXLocalVariable new
			stub: true ;
			name: 'v1' ;
			parentBehaviouralEntity: m2 ;
			parentPackage: p1 ;
			declaredType: c1 ;
			yourself.

	pr1 := FAMIXParameter new
			stub: true ;
			name: 'pr1' ;
			parentBehaviouralEntity: m3 ;
			parentPackage: p1 ;
			declaredType: c2 ;
			yourself.
	pr2 := FAMIXParameter new
			stub: true ;
			name: 'pr2' ;
			parentBehaviouralEntity: m3 ;
			parentPackage: p1 ;
			declaredType: c3 ;
			yourself.
		
	at1 := FAMIXAttribute new
			stub: true ;
			name: 'at1' ;
			parentType: c1 ;
			parentPackage: p1 ;
			declaredType: c3 ;
			yourself.
	at2 := FAMIXAttribute new
			stub: true ;
			name: 'at2' ;
			parentType: c3 ;
			parentPackage: p2 ;
			declaredType: c2 ;
			yourself.
	
	self model: (MooseModel new
		add: p1 ;
		add: p2 ;
		add: c1 ;
		add: c2 ;
		add: c3 ;
		add: m1 ;
		add: m2 ;
		add: m3 ;
		add: m4 ;
		add: v1 ;
		add: at1 ;
		add: at2 ;
		add: pr1 ;
		add: pr2 ;
		yourself).

]

{ #category : #'famix-class' }
MooseChefTypeDeclarationAssociationTest >> testFamixClassIncomingTypeDeclarations [
	self
		assert:
			((self model entityNamed: 'C2') queryIncomingTypeDeclarations
				atScope: FmxNGType) size
		equals: 3.
	self
		assert:
			(((self model entityNamed: 'C2') queryIncomingTypeDeclarations
				atScope: FmxNGType) includes: (self model entityNamed: 'C1')).
	self
		assert:
			(((self model entityNamed: 'C2') queryIncomingTypeDeclarations
				atScope: FmxNGType) includes: (self model entityNamed: 'C2')).
	self
		assert:
			(((self model entityNamed: 'C2') queryIncomingTypeDeclarations
				atScope: FmxNGType) includes: (self model entityNamed: 'C3')).
	self
		assert:
			((self model entityNamed: 'C3') queryIncomingTypeDeclarations
				atScope: FmxNGType) size
		equals: 3.
	self
		assert:
			(((self model entityNamed: 'C3') queryIncomingTypeDeclarations
				atScope: FmxNGType) includes: (self model entityNamed: 'C1')).
	self
		assert:
			(((self model entityNamed: 'C3') queryIncomingTypeDeclarations
				atScope: FmxNGType) includes: (self model entityNamed: 'C2')).
	self
		assert:
			(((self model entityNamed: 'C3') queryIncomingTypeDeclarations
				atScope: FmxNGType) includes: (self model entityNamed: 'C3'))
]

{ #category : #'famix-class' }
MooseChefTypeDeclarationAssociationTest >> testFamixClassOutgoingTypeDeclarations [
	self
		assert:
			((self model entityNamed: 'C2') queryOutgoingTypeDeclarations opposites includes: (self model entityNamed: 'C1')).
	self
		assert:
			((self model entityNamed: 'C2') queryOutgoingTypeDeclarations opposites includes: (self model entityNamed: 'C2')).
	self
		assert:
			((self model entityNamed: 'C2') queryOutgoingTypeDeclarations opposites includes: (self model entityNamed: 'C3')).
	self assert: (self model entityNamed: 'C2') queryOutgoingTypeDeclarations opposites size equals: 3.
	self assert: (self model entityNamed: 'C3') queryOutgoingTypeDeclarations opposites size equals: 2.
	self
		assert:
			((self model entityNamed: 'C3') queryOutgoingTypeDeclarations opposites includes: (self model entityNamed: 'C2')).
	self
		assert:
			((self model entityNamed: 'C3') queryOutgoingTypeDeclarations opposites includes: (self model entityNamed: 'C3'))
]

{ #category : #'famix-class' }
MooseChefTypeDeclarationAssociationTest >> testFamixClassTypeDeclarationsWithoutSelfLoops [
	self
		assert:
			((self model entityNamed: 'C3') queryIncomingTypeDeclarations
				withoutSelfLoops atScope: FmxNGType) size
		equals: 2.
	self
		assert:
			(((self model entityNamed: 'C3') queryIncomingTypeDeclarations
				withoutSelfLoops atScope: FmxNGType)
				includes: (self model entityNamed: 'C1')).
	self
		assert:
			(((self model entityNamed: 'C3') queryIncomingTypeDeclarations
				withoutSelfLoops atScope: FmxNGType)
				includes: (self model entityNamed: 'C2')).
	self
		assert:
			((self model entityNamed: 'C3') queryOutgoingTypeDeclarations
				withoutSelfLoops atScope: FmxNGType) size
		equals: 1.
	self
		assert:
			(((self model entityNamed: 'C3') queryOutgoingTypeDeclarations
				withoutSelfLoops atScope: FmxNGType)
				includes: (self model entityNamed: 'C2'))
]

{ #category : #'famix-method' }
MooseChefTypeDeclarationAssociationTest >> testFamixMethodIncomingTypeDeclarations [
	self assert: (self model entityNamed: 'C1.m1()') queryIncomingTypeDeclarations size equals: 0.
	self assert: (self model entityNamed: 'C2.m3(C2,C3)') queryIncomingTypeDeclarations size equals: 0
]

{ #category : #'famix-method' }
MooseChefTypeDeclarationAssociationTest >> testFamixMethodOutgoingTypeDeclarations [
	self assert: (self model entityNamed: 'C2.m2()') queryOutgoingTypeDeclarations opposites size equals: 2.
	self
		assert:
			((self model entityNamed: 'C2.m2()') queryOutgoingTypeDeclarations opposites includes: (self model entityNamed: 'C1')).
	self
		assert:
			((self model entityNamed: 'C2.m2()') queryOutgoingTypeDeclarations opposites includes: (self model entityNamed: 'C3')).
	self
		assert:
			((self model entityNamed: 'C2.m3(C2,C3)') queryOutgoingTypeDeclarations opposites includes: (self model entityNamed: 'C1')).
	self
		assert:
			((self model entityNamed: 'C2.m3(C2,C3)') queryOutgoingTypeDeclarations opposites includes: (self model entityNamed: 'C2')).
	self
		assert:
			((self model entityNamed: 'C2.m3(C2,C3)') queryOutgoingTypeDeclarations opposites includes: (self model entityNamed: 'C3')).
	self assert: (self model entityNamed: 'C2.m3(C2,C3)') queryOutgoingTypeDeclarations opposites size equals: 3.

]

{ #category : #'famix-method' }
MooseChefTypeDeclarationAssociationTest >> testFamixMethodTypeDeclarationsWithoutSelfLoops [
	self
		assert:
			(self model entityNamed: 'C1.m1()') queryIncomingTypeDeclarations
				withoutSelfLoops size
		equals: 0.
	self
		assert:
			(((self model entityNamed: 'C2.m3(C2,C3)')
				queryOutgoingTypeDeclarations withoutSelfLoops atScope: FmxNGType)
				includes: (self model entityNamed: 'C1')).
	self
		assert:
			((self model entityNamed: 'C2.m3(C2,C3)')
				queryOutgoingTypeDeclarations withoutSelfLoops atScope: FmxNGType)
				size
		equals: 3.
	self
		assert:
			(((self model entityNamed: 'C2.m3(C2,C3)')
				queryOutgoingTypeDeclarations withoutSelfLoops atScope: FmxNGType)
				includes: (self model entityNamed: 'C3'))
]

{ #category : #'famix-package' }
MooseChefTypeDeclarationAssociationTest >> testFamixPackageIncomingTypeDeclarations [
	self
		assert:
			((self model entityNamed: 'p2') queryIncomingTypeDeclarations
				atScope: FmxNGPackage) size
		equals: 2.
	self
		assert:
			(((self model entityNamed: 'p2') queryIncomingTypeDeclarations
				atScope: FmxNGPackage) includes: (self model entityNamed: 'p1')).
	self
		assert:
			(((self model entityNamed: 'p2') queryIncomingTypeDeclarations
				atScope: FmxNGPackage) includes: (self model entityNamed: 'p2'))
]

{ #category : #'famix-package' }
MooseChefTypeDeclarationAssociationTest >> testFamixPackageOutgoingTypeDeclarations [
	self
		assert:
			((self model entityNamed: 'p1') queryOutgoingTypeDeclarations
				atScope: FmxNGPackage) size
		equals: 2.
	self
		assert:
			(((self model entityNamed: 'p1') queryOutgoingTypeDeclarations
				atScope: FmxNGPackage) includes: (self model entityNamed: 'p1')).
	self
		assert:
			(((self model entityNamed: 'p1') queryOutgoingTypeDeclarations
				atScope: FmxNGPackage) includes: (self model entityNamed: 'p2'))
]

{ #category : #'famix-package' }
MooseChefTypeDeclarationAssociationTest >> testFamixPackageTypeDeclarationsWithoutSelfLoops [
	self
		assert:
			((self model entityNamed: 'p2') queryIncomingTypeDeclarations
				atScope: FmxNGPackage) withoutSelfLoops size
		equals: 1.
	self
		assert:
			(((self model entityNamed: 'p2') queryIncomingTypeDeclarations
				atScope: FmxNGPackage) withoutSelfLoops
				includes: (self model entityNamed: 'p1')).
	self
		assert:
			((self model entityNamed: 'p1') queryOutgoingTypeDeclarations
				atScope: FmxNGPackage) withoutSelfLoops size
		equals: 1.
	self
		assert:
			(((self model entityNamed: 'p1') queryOutgoingTypeDeclarations
				atScope: FmxNGPackage) withoutSelfLoops
				includes: (self model entityNamed: 'p2'))
]
