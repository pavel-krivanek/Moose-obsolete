grammar-annotations
annotation 

	^(self tokenFor: '@') , qualifiedName ,
	((self tokenFor: '(') , 
		(elementValuePairs / elementValue) optional , 
		(self tokenFor: ')') ) optional