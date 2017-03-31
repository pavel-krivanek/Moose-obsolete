tests
testDeepEdgesDo
	| trace |
	trace := OrderedCollection new.
	1 
		deep: [ :each | self nextGraphElementsFrom: each ]
		edgesDo: [ :from :to | trace add: (from -> to) ].
	self assert: trace equals: { 1->2. 1->3. 2->3 } asOrderedCollection.