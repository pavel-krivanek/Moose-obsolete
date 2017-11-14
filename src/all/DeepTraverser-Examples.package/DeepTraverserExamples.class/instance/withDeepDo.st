examples-extensions
withDeepDo
	<gtExample>
	
	| trace graph |
	graph := self graph1.
	trace := OrderedCollection new.
	1 
		withDeep: [ :each | self nextElementsFor: each inGraph: graph ] 
		do: [ :each | trace add: each ].
	self assert: trace = #( 1 2 3 ) asOrderedCollection