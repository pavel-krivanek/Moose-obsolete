tests
testChanged
	| diagram el changed |
	el := OPNamedElement new.
	changed := nil.
	el when: OPElementChanged do: [ :event | changed := event element ].
	self assert: changed isNil.

	changed := nil.
	el name: 'a name'.
	self assert: changed = el.

	changed := nil.
	diagram := OPDiagram new.
	diagram add: el.
	self assert: changed = el.

	changed := nil.
	diagram remove: el.
	self assert: changed = el