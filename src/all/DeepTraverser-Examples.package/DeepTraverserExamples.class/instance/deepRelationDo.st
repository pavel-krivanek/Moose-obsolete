examples-extensions
deepRelationDo
	<todo: 'is this really what we want ?'>
	<gtExample>
	
	| relationTrace graph |
	graph := self graph1.
	relationTrace := OrderedCollection new.
	1 
		deep: [ :each | self nextElementsFor: each inGraph: graph ]
		relationDo: [ :from :to | relationTrace add: from->to ].
	self assert: relationTrace = { 1->2 . 1->3 . 2->3 } asOrderedCollection
