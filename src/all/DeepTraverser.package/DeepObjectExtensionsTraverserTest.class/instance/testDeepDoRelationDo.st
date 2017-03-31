tests
testDeepDoRelationDo
	| trace relationTrace |
	trace := OrderedCollection new.
	relationTrace := OrderedCollection new.
	1 
		deep: [ :each | self nextGraphElementsFrom: each ]
		do: [ :each | trace add: each ]
		relationDo: [ :from :to | relationTrace add: from->to ].
	self 
		assert: trace 
		equals: #(2 3) asOrderedCollection.
	self 
		assert: relationTrace 
		equals: {1->2 . 1->3 . 2->3} asOrderedCollection