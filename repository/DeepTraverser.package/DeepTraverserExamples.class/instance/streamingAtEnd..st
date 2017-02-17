examples-streaming
streamingAtEnd: traverser
	<gtExample>
	<dependsOn: #streamingNext:>
	<raises: #CollectionIsEmpty>
	
	self assert: traverser hasNext not.
	self assert: traverser current isNil not.
	self assert: traverser current = $k.
	self assert: traverser atEnd.
	
	traverser next " oups "