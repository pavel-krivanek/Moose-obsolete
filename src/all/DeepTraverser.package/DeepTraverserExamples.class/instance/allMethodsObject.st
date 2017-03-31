examples-difference
allMethodsObject
	<gtExample>
	| resultByRaw resultByTraverser |
	
	resultByRaw := Object allSubclasses 
			flatCollect: [ :each | each methods ].
			
	resultByTraverser := Object
			deep: #subclasses 
			flatCollect: [ :each | each methods ].
	
	self assert: resultByRaw size = resultByTraverser size.
	self assert: resultByRaw asSet = resultByTraverser asSet.
	