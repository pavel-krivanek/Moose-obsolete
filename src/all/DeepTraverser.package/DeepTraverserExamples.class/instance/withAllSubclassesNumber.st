examples-difference
withAllSubclassesNumber
	<gtExample>
	| resultByRaw resultByTraverser |
	resultByRaw := Number withAllSubclasses.
	resultByTraverser := Number withDeepCollect: #subclasses.
	
	self assert: resultByRaw size = resultByTraverser size.
	self assert: resultByRaw asSet = resultByTraverser asSet.
	