Class {
	#name : #FAMIXNamespaceGroupPaintingTest,
	#superclass : #TestCase,
	#category : #'Moose-RoassalPaintings-Test'
}

{ #category : #tests }
FAMIXNamespaceGroupPaintingTest >> testViewHierarchy [

	| group |
	group := FAMIXNamespaceGroup new.
	group add: FmxNGNamespace new.
	group add: FmxNGNamespace new.
	group viewHierarchy delete
]
