examples-extensions
deepDo
	<gtExample>
	
	| trace graph |
	graph := self graph1.
	trace := OrderedCollection new.
	1 
		deep: [ :each | self nextElementsFor: each inGraph: graph ]
		do: [ :each | trace add: each ].
	self assert: trace = #( 2 3 ) asOrderedCollection