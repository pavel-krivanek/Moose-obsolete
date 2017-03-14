grammar-statements
switchLabel 

	^ ((self tokenFor: 'case') , expression , (self tokenFor: ':'))
	/ ((self tokenFor: 'default'), (self tokenFor: ':'))