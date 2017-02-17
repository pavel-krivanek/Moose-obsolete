examples-relations
testTraversedNodesInGraph4WithStart: resultWithStart withoutStart: resultWithoutStart
	<gtExample>
	<description: 'withStart / withoutStart only specifies whether to apply the action on the start node or not - has no influence on the traversal itself'>
	<dependsOn: #testTraversedNodesWithStartInGraph4:>
	<dependsOn: #testTraversedNodesWithoutStartInGraph4:>
	
	self assert: resultWithStart = resultWithoutStart