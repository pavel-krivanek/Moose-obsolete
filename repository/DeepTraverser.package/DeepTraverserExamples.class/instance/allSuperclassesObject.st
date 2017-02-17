examples-difference
allSuperclassesObject
	<gtExample>
	| resultByRaw resultByTraverser |
	resultByRaw := Object allSuperclasses.
	resultByTraverser := Object deepCollect: #superclass.
	
	self assert: resultByRaw size = resultByTraverser size.
	self assert: resultByRaw asSet = resultByTraverser asSet.
	