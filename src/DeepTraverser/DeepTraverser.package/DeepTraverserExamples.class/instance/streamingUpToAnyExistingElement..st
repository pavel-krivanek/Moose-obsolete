examples-streaming
streamingUpToAnyExistingElement: traverser
	<gtExample>
	<dependsOn: #streamingUpToExistingElement:>
	
	| result |

	result := traverser upToAny: { $k. $i }.
	self assert: result asArray = { $g. $h }.
	self assert: traverser atEnd not.
	
	result := traverser upToAny: { $z. $y. $k }.
	self assert: result asArray = { $j }.
	
	self assert: traverser current = $k.
	self assert: traverser atEnd.
	
	^ traverser