grammar
importDeclaration 

^	((self tokenFor: 'import') , (self tokenFor: 'static') optional , identifier),
	(	(	(self tokenFor: '.') , (self tokenFor: '*'))
		/(	((self tokenFor: '.') , identifier) plus , ((self tokenFor: '.') , (self tokenFor: '*')) optional)
	),
	(self tokenFor: ';')