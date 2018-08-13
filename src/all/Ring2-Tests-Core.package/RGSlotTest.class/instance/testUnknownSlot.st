tests
testUnknownSlot

	| slot expression | 
	slot  := RGUnknownSlot unnamed.
	self assert: (slot isRingResolved).
	self assert: (slot hasUnresolvedAll: #(name expression)).
	self assert: (slot isSlot).
	expression := 'ToManyRelationSlot inverse: #director inClass: #SlotExampleMovie'.
	slot expression: expression.
	self assert: slot expression equals: expression.
	