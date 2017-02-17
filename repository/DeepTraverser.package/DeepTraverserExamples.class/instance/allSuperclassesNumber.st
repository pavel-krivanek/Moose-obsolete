examples-difference
allSuperclassesNumber
	<gtExample>
	| resultByRaw resultByTraverser |
	resultByRaw := Number allSuperclasses.
	resultByTraverser := Number deepCollect: #superclass.
	
	self assert: resultByRaw size = resultByTraverser size.
	self assert: resultByRaw asSet = resultByTraverser asSet.
	