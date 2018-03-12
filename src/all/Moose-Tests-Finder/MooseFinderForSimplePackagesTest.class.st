Class {
	#name : #MooseFinderForSimplePackagesTest,
	#superclass : #MooseFinderTest,
	#category : #'Moose-Tests-Finder'
}

{ #category : #running }
MooseFinderForSimplePackagesTest >> buildModel [ 
	model := MooseModel new.
	model 
		add: (FmxNGPackage new name: 'name1');
		add: (FmxNGPackage new name: 'name2');
		add: (FmxNGPackage new name: 'name3').
]
