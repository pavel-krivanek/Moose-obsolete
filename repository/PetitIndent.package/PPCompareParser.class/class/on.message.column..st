as yet unclassified
on: compareBlock message: message column: column
	^ (self basicNew
		initialize)
		compareBlock: compareBlock ;
		message: message;
		column: column;
		yourself