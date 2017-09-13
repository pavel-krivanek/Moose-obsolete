tests
testBlockNameUpdate
	element modelElement: 'hello'.
	element text: #yourself.
	rt := element rtElement.
	self assert: (rt shape textFor: rt) equals: 'hello'.
	element modelElement: 'world'.
	self assert: (rt shape textFor: rt) equals: 'world'