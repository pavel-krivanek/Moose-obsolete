tests
testNewSlot

	| slot | 
	slot  := RGFixedLayout unnamed.
	self assert: (slot isRingResolved).
	self assert: (slot hasUnresolved: #name).
	self assert: (slot isLayout).
	