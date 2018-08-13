tests
testUnknownSlots

	| env slot |
	
	env := RGEnvironment new.
	env backend: (RGReadOnlyImageBackend for: env).
	
	slot := (SlotExamplePerson slotNamed: #directedMovies) asRingMinimalDefinitionIn: env.
	self assert: slot isSlot.
	self assert: slot name equals: #directedMovies.
	self assert: slot expression equals: 'ToManyRelationSlot inverse: #director inClass: #SlotExampleMovie'.
	self assert: slot parent isLayout.
	self assert: slot parent isFixedLayout.
	self assert: slot parent parent name equals: #SlotExamplePerson.
	
	
