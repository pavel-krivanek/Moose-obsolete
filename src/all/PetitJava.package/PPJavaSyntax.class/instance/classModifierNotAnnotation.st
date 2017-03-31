grammar-modifiers
classModifierNotAnnotation

	^	(self tokenFor: 'abstract') 
	/	(self tokenFor: 'final') 
	/	(self tokenFor: 'protected') 
	/	(self tokenFor: 'private') 
	/	(self tokenFor: 'public') 
	/	(self tokenFor: 'static')
	/	(self tokenFor: 'strictfp') 
		