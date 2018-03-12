Class {
	#name : #FAMIXNamespaceChefTest,
	#superclass : #AbstractFAMIXNavigationTest,
	#category : #'Famix-Tests-Core'
}

{ #category : #tests }
FAMIXNamespaceChefTest >> testNilNamespaceScope [
	| namespace |
	namespace := FmxNGNamespace new.
	self assert: namespace namespaceScope == namespace
]

{ #category : #tests }
FAMIXNamespaceChefTest >> testNoClassScope [
	self assert: FmxNGNamespace new typeScope isEmpty
]
