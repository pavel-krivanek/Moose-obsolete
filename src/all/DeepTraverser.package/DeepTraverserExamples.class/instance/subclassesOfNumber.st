examples-relations
subclassesOfNumber
	<gtExample>
	| relations traverser |
	relations := OrderedCollection new.
	
	traverser := (DeepTraverser new
		onNodeTraverse: #subclasses;
		onEdgeAction: [ :from :to |
			self assert: to superclass == from.
			relations add: (from -> to) ];
		on: Number startWith: Number;
		yourself) run.
	
	self assert: relations size = Number allSubclasses size.	
		
	^ relations