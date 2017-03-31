examples-streaming
streamingUpToNonExistingElement: traverser
	<gtExample>
	<dependsOn: #streamingUpToExistingElement:>
	
	| result |

	result := traverser upTo: $b.
	self assert: result asArray = { $g. $h. $i. $j. $k }.
	self assert: traverser atEnd.
	
	^ traverser