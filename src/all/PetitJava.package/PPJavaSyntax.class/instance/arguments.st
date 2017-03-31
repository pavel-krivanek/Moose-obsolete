grammar
arguments 

	^(self tokenFor: '('),
		expressionList optional,
	(self tokenFor: ')')