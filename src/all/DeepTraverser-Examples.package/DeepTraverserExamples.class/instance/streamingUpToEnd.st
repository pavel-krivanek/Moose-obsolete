examples-streaming
streamingUpToEnd
	<gtExample>
	| result traverser |
	traverser := self streamingTraverser.	
	result := traverser upToEnd.
	self assert: result asArray = { $a. $b. $c. $d. $e. $f. $g. $h. $i. $j. $k }.
	self assert: traverser atEnd.
	
	^ traverser