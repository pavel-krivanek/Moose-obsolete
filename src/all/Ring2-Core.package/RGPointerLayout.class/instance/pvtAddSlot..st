private - backend access
pvtAddSlot: anRGSlot

	self environment verifyOwnership: anRGSlot.
	
	slots isRingResolved ifFalse: [ 
		self pvtCleanSlots  ].
	
	slots add: anRGSlot.	