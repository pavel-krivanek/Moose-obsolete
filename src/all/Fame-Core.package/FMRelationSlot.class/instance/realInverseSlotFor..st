accessing
realInverseSlotFor: anObject

	^ anObject class slotNamed: self inverseSlot name.
"
	^ self inverseSlot."