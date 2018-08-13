private - backend access
pvtRemoveSlot: anRGSlot

	self environment verifyOwnership: anRGSlot.
	
	slots remove: anRGSlot.
	
