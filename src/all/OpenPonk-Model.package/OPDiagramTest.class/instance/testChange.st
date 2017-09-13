tests
testChange
	| changed |
	changed := false.
	diagram whenChanged: [ changed := true ].
	diagram name: 'changed name'.
	self assert: changed.
	self assert: diagram name equals: 'changed name'