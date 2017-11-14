examples-relations
testTraversedNodesInGraph4WithoutStartActionAndWithoutStart
	<gtExample>
	<description: 'withStart / withoutStart only specifies whether to apply the action on the start node or not - has no influence on the traversal itself'>
	| resultWithStartAction resultWithoutStart |
	resultWithStartAction := self testTraversedNodesWithoutStartActionInGraph4.
	resultWithoutStart := self testTraversedNodesWithoutStartInGraph4.
	self assert: resultWithStartAction = resultWithoutStart