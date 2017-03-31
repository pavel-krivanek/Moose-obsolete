grammar-expressions
assignmentOperator 

	^ (self tokenFor: '=')
	/ (self tokenFor: '>>>=')
	/	(self tokenFor: '>>=')
	/	(self tokenFor: '<<=')
	/	(self tokenFor: '&=')
	/	(self tokenFor: '^=')
	/	(self tokenFor: '|=')
	/	(self tokenFor: '-=')
	/	(self tokenFor: '+=')
	/	(self tokenFor: '%=')
	/	(self tokenFor: '/=')
	/	(self tokenFor: '*=')
		