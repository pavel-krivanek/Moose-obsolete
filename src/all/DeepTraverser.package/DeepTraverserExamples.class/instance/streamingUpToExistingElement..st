examples-streaming
streamingUpToExistingElement: traverser
	<gtExample>
	<dependsOn: #streamingTraverser:>
	
	| result |
	self assert: (traverser next: 2) = { $a. $b }.
	
	result := traverser upTo: $f.
	self assert: result asArray = { $c. $d. $e }.
	self assert: traverser current = $f.
	
	^ traverser