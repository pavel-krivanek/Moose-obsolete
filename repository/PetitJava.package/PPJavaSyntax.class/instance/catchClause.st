grammar-statements
catchClause

	^ (self tokenFor: 'catch') ,
	(self tokenFor: '(') ,
		formalParameter ,
	(self tokenFor: ')'), 
	block
	