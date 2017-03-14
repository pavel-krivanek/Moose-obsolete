examples-relations
superclassOfSmallInteger
	<gtExample>
	| relations traverser |
	relations := OrderedCollection new.
	
	traverser := (DeepTraverser new
		onNodeTraverse: #superclass;
		onEdgeAction: [ :from :to |
			self assert: to == from superclass.
			relations add: (from -> to) ];
		on: Number startWith: SmallInteger;
		yourself) run.
	
	self assert: relations size = SmallInteger allSuperclasses size.	
		
	^ relations