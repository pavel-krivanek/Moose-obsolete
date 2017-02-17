grammar-statements
throwStatement 

	^ (self tokenFor: 'throw') , expression , (self tokenFor: ';')