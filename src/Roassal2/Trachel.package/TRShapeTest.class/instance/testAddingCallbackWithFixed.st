callback
testAddingCallbackWithFixed

	| t c s canvas |
	t := OrderedCollection new.
	c := TRAddedCallback new.
	c block: [ :aShape | t add: aShape ].
	self assert: t isEmpty.
	
	s := TRBoxShape new size: 30.
	s addCallback: c.
	self assert: t isEmpty.
	
	canvas := TRCanvas new.
	canvas addShape: s.
	s setAsFixed.
	self deny: t isEmpty.
	self assert: t size equals: 1.
	self assert: t anyOne equals: s