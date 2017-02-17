adding
addPITarget: aTargetString data: aDataString
	^ self addNode:
		(self
			newPITarget: aTargetString
			data: aDataString)