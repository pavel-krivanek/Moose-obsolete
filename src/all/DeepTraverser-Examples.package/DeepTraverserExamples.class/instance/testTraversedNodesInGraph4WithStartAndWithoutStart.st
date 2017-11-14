examples-relations
testTraversedNodesInGraph4WithStartAndWithoutStart
	<gtExample>
	<description: 'withStart / withoutStart only specifies whether to apply the action on the start node or not - has no influence on the traversal itself'>
	| resultWithStart resultWithoutStart |
	resultWithStart := self testTraversedNodesWithStartInGraph4.
	resultWithoutStart := self testTraversedNodesWithoutStartInGraph4.	
	self assert: resultWithStart = resultWithoutStart