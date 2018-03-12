Class {
	#name : #MooseFinderForSimpleMethodsTest,
	#superclass : #MooseFinderTest,
	#category : #'Moose-Tests-Finder'
}

{ #category : #running }
MooseFinderForSimpleMethodsTest >> buildModel [ 
	| class |
	model := MooseModel new.
	class := FmxNGClass new.
	class 
		addMethod: (FmxNGMethod new name: 'name1');
		addMethod: (FmxNGMethod new name: 'name2');
		addMethod: (FmxNGMethod new name: 'name3').

]
