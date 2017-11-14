examples-difference
withAllSubclassesCollection
	<gtExample>
	| resultByRaw resultByTraverser |
	resultByRaw := Collection withAllSubclasses.
	resultByTraverser := Collection withDeepCollect: #subclasses.
	
	self assert: resultByRaw size = resultByTraverser size.
	self assert: resultByRaw asSet = resultByTraverser asSet.
	