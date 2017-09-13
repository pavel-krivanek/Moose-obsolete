tests
testRemove
	| removed changed |
	diagram add: element.

	removed := nil.
	changed := nil.
	diagram when: OPElementRemoved do: [ :event | removed := event element ].
	diagram when: OPElementChanged do: [ :event | changed := event element ].
	diagram remove: element.

	self assert: removed equals: element.
	self assert: changed equals: diagram.
	self assert: diagram elements isEmpty