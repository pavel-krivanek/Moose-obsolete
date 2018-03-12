Class {
	#name : #FAMIXClassChefTest,
	#superclass : #AbstractFAMIXNavigationTest,
	#category : #'Famix-Tests-Core'
}

{ #category : #tests }
FAMIXClassChefTest >> testDefaultClassScope [
	| class |
	class := FmxNGClass new.
	self assert: class typeScope == class
]

{ #category : #tests }
FAMIXClassChefTest >> testNilNamespaceScope [
	self assert: FmxNGClass new namespaceScope isNil
]
