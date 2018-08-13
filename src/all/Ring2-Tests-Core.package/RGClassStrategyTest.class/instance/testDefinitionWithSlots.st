tests
testDefinitionWithSlots

	| aClass slot expression |
	
	aClass := RGClass named: #SomeClass.
	aClass superclass name: #Object.
	slot  := RGUnknownSlot named: #iVar parent: aClass layout.
	aClass layout addSlot: slot.
	expression := 'ToManyRelationSlot inverse: #director inClass: #SlotExampleMovie'.
	slot expression: expression.
	
	self assert: (aClass definition beginsWith: 'Object subclass: #SomeClass').
	self assert: (aClass definition includesSubstring: ('#iVar => ', expression)).
