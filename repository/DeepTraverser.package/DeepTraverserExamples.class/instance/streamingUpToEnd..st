examples-streaming
streamingUpToEnd: traverser
	<gtExample>
	<dependsOn: #streamingTraverser:>
	
	| result |
	result := traverser upToEnd.
	self assert: result asArray = { $a. $b. $c. $d. $e. $f. $g. $h. $i. $j. $k }.
	self assert: traverser atEnd.
	
	^ traverser