as yet unclassified
on: compareBlock message: message
	^ (self basicNew
		initialize)
		compareBlock: compareBlock ;
		message: message;
		yourself