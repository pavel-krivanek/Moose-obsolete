examples-specs
extensionVSFullDeclaration: graph
	<gtExample>
	<dependsOn: #graph1>
	| result1 result2 result3 result4 |
	
	" traverser shortcuts "
	result1 := $a
		withDeep: [ :item | self nextElementsFor: item inGraph: graph ]
		collect: [ :item | item ].
	
	" traverser specs "
	result2 := OrderedCollection new.
	(DeepTraverser new 
		onNodeTraverse: [ :item | self nextElementsFor: item inGraph: graph ];
		onNodeAction: [ :item | result2 add: item ];
		on: graph startWith: $a;
		yourself) run.
	self assert: result1 = result2.
	
	" collection interface "
	result3 := OrderedCollection new.
	(DeepTraverser new 
		onNodeTraverse: [ :item | self nextElementsFor: item inGraph: graph ];
		on: graph startWith: $a;
		yourself) do: [ :item | result3 add: item ].	
	self assert: result1 = result3.
	
	" streaming interface "
	result4 := (DeepTraverser new 
		onNodeTraverse: [ :item | self nextElementsFor: item inGraph: graph ];
		on: graph startWith: $a;
		yourself) upToEnd.	
	self assert: result1 = result4.