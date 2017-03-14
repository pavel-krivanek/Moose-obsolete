*Famix-Extensions
numberOfMessageSends
	<MSEProperty: #numberOfMessageSends type: #Number>
	<derived>
	<MSEComment: 'The number of message sends from a class'>
	
	^self
		lookUpPropertyNamed: #numberOfMessageSends
		computedAs: [self methodsGroup sumNumbers: #numberOfMessageSends]