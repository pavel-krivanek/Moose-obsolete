Class {
	#name : #MooseFinderForSimpleNamespacesTest,
	#superclass : #MooseFinderTest,
	#category : #'Moose-Tests-Finder'
}

{ #category : #running }
MooseFinderForSimpleNamespacesTest >> buildModel [
	model := MooseModel new.
	model 
		add: (FmxNGNamespace new name: 'name1');
		add: (FmxNGNamespace new name: 'name2');
		add: (FmxNGNamespace new name: 'name3').
]
