tests
testWithDeepEdgesDo
	| trace |
	trace := OrderedCollection new.
	0 
		withDeep: [ :each | self nextGraphElementsFrom: each ] 
		edgesDo: [ :from :to | trace add: (from -> to) ].
	self assert: trace equals: { 0->1. 1->2. 1->3. 2->3 } asOrderedCollection.