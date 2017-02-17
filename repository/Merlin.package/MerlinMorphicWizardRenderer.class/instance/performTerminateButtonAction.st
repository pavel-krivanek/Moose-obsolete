buttonsActions
performTerminateButtonAction
	
	self dialogWindow close.
	self wizardControl hasFinished ifFalse: [
		self doOpen: (self currentPane renderOnMerlinRenderer: self)
		]