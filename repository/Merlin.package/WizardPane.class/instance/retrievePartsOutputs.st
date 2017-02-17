actions
retrievePartsOutputs
	"action executed when the next button is pressed"
	
	"The contents of a part might have been changed without the part itself know it (This is the case for a textField). So we first notify each of them that their contents mihgt have changed"
	self notifyPartsMightHaveChanged.
	partsAndInformationsAssociated keysAndValuesDo: 
		[ :key :value | 
		self wizardControl 
			information: value
			withValue: key transformedOutputValue ].
	