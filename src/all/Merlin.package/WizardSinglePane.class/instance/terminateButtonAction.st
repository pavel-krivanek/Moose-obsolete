actions
terminateButtonAction
	"action executed when the terminate button is pressed"
	
	partsAndInformationsAssociated keysAndValuesDo: 
		[ :key :value | 
		self wizardControl 
			information: value
			withValue: key transformedOutputValue ].
	self wizardControl performTerminateButtonAction