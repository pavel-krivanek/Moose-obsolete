examples-streaming
streamingRestart: traverser
	<gtExample>
	<dependsOn: #streamingNext:>
	
	traverser reset.
	
	self assert: traverser hasNext.
	self assert: traverser current isNil.
	self assert: traverser position = 0.
	
	self assert: traverser atEnd not.