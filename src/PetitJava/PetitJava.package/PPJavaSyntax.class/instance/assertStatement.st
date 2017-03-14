grammar-statements
assertStatement 

	^ (self tokenFor: 'assert') , expression , 
	((self tokenFor: ':'), expression ) optional ,
	(self tokenFor: ';')