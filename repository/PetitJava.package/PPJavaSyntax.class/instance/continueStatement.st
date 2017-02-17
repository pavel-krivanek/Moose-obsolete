grammar-statements
continueStatement 

	^ (self tokenFor: 'continue') , identifier optional , (self tokenFor: ';')