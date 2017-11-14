examples-streaming
streamingUpToNonExistingElement
	<gtExample>
	
	| result traverser |

	traverser := self streamingUpToExistingElement.
	result := traverser upTo: $b.
	self assert: result asArray = { $g. $h. $i. $j. $k }.
	self assert: traverser atEnd.
	
	^ traverser