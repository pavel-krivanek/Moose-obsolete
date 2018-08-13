tests
testSlots

	| env slot |
	
	env := RGEnvironment new.
	env backend: (RGReadOnlyImageBackend for: env).
	
	slot := (Point slotNamed: #x) asRingMinimalDefinitionIn: env.
	self assert: slot isSlot.
	self assert: slot name equals: #x.
	self assert: slot parent isLayout.
	self assert: slot parent isFixedLayout.
	self assert: slot parent parent name equals: #Point.
	
