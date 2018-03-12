Class {
	#name : #MooseQueryOfInvocationWithNilCandidatesTest,
	#superclass : #TestCase,
	#instVars : [
		'model',
		'class'
	],
	#category : #'Moose-Query-Test'
}

{ #category : #running }
MooseQueryOfInvocationWithNilCandidatesTest >> setUp [
	| inh method inv |
	class := FmxNGClass new name: 'class'.
	inh := FmxNGInheritance new subclass: class.
	method := FmxNGMethod new name: 'method' ; parentType: class.
	inv := FmxNGInvocation new sender: method.
]

{ #category : #tests }
MooseQueryOfInvocationWithNilCandidatesTest >> testProviderTypesShouldNotRaiseError [
	self shouldnt: [ class providerTypes ] raise: Error
]
