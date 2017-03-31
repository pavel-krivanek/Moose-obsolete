examples-difference
allMethodsArray
	<gtExample>
	| resultByRaw resultByTraverser |
	
	resultByRaw := Array allSubclasses 
			flatCollect: [ :each | each methods ].
			
	resultByTraverser := Array
			deep: #subclasses 
			flatCollect: [ :each | each methods ].
	
	self assert: resultByRaw size = resultByTraverser size.
	self assert: resultByRaw asSet = resultByTraverser asSet.
	