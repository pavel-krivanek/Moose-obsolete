examples-difference
withAllSubclassesObject
	<gtExample>
	| resultByRaw resultByTraverser |
	resultByRaw := Object withAllSubclasses.
	resultByTraverser := Object withDeepCollect: #subclasses.
	
	self assert: resultByRaw size = resultByTraverser size.
	self assert: resultByRaw asSet = resultByTraverser asSet.
	