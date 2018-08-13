slot
expressionFor: anRGUnknownSlot

	| realClass realSlot |
	
	realClass := self realBehaviorFor: anRGUnknownSlot parent parent.
	realSlot := realClass slotNamed: anRGUnknownSlot name.
	^ (realSlot printString copyAfter: $>) trimBoth
