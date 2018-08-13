accessing - backend
removeSlot: anRGSlot

	self parent announceDefinitionChangeDuring: [ 
		self backend forBehavior removeSlot: anRGSlot from: self ].