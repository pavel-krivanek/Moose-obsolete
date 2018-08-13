accessing - backend
addSlot: anRGSlot 

	self parent announceDefinitionChangeDuring: [ 
		self backend forBehavior addSlot: anRGSlot to: self ].