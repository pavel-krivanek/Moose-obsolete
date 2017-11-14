examples-extensions
deepDoRelationDo
	<gtExample>
	
	| trace relationTrace graph |
	graph := self graph1.
	trace := OrderedCollection new.
	relationTrace := OrderedCollection new.
	1 
		deep: [ :each | self nextElementsFor: each inGraph: graph ]
		do: [ :each | trace add: each ]
		relationDo: [ :from :to | relationTrace add: from->to ].
	self assert: trace = #( 2 3 ) asOrderedCollection.
	self assert: relationTrace = { 1->2 . 1->3 . 2->3 } asOrderedCollection
