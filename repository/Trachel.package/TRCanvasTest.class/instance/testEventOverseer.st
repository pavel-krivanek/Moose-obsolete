event overseer
testEventOverseer

	| c s click eo events |
	c := TRCanvas new.
	s := TRBoxShape new.
	c addShape: s.
	click := 0.
	s when: TRMouseClick do: [ :evt | click := click + 1 ].

	eo := TREventOverseer new.	
	events := OrderedCollection new. 
	eo block: [ :anEvent | events add: anEvent ].
	c eventOverseer: eo.
	
	self assert: click equals: 0.
	self assert: events isEmpty.
	
	s announce: TRMouseClick new.
	self assert: click equals: 1.
	"self assert: events size equals: 1.
	self assert: events first class equals: TRMouseClick."