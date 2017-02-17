examples-streaming
streamingUpToAnyMatching: traverser
	<gtExample>
	<dependsOn: #streamingTraverser:>
	
	| result |
	result := traverser upToAnyMatching: [ :node | node = $c ].
	self assert: result asArray = { $a. $b }.
	self assert: traverser current = $c.
	
	result := traverser upToAnyMatching: [ :node | node asInteger > 102 and: [ node asInteger < 105 ] ].
	self assert: result asArray = { $d. $e. $f. }.
	
	^ traverser