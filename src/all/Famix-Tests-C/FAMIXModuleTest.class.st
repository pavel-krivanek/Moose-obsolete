Class {
	#name : #FAMIXModuleTest,
	#superclass : #TestCase,
	#category : #'Famix-Tests-C'
}

{ #category : #tests }
FAMIXModuleTest >> testFunctions [
	| module function |
	module := FmxNGModule new.
	self assert: module functions isEmpty.
	function := FmxNGFunction new.
	function parentModule: module.
	self assert: function parentModule == module.
	self assert: module functions size equals: 1
]
