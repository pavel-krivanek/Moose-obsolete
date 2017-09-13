tests
testAdd
	| added changed |
	added := nil.
	changed := nil.
	diagram when: OPElementAdded do: [ :event | added := event element ].
	diagram when: OPElementChanged do: [ :event | changed := event element ].
	diagram add: element.

	self assert: added equals: element.
	self assert: changed equals: diagram.
	self assertCollection: diagram ownedElements hasSameElements: {element}