examples-streaming
streamingAtEnd
	<gtExample>
	
	| traverser |
	traverser := self streamingNext.	
	self assert: traverser hasNext not.
	self assert: traverser current isNil not.
	self assert: traverser current equals: $k.
	self assert: traverser atEnd.
	
	[
		traverser next. " oups "
	] on: CollectionIsEmpty do: [ 
		self assert: true.
		^ traverser ].
	self assert: false