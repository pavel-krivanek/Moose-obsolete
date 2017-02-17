grammar-expressions
selector 

	^	(	(self tokenFor: '.') , identifier, arguments optional )
		/(	(self tokenFor: '.'), (self tokenFor: 'this'))
		/(	(self tokenFor: '.'), (self tokenFor: 'super'), superSuffix)
		/	innerCreator 
		/(	(self tokenFor: '['), expression , (self tokenFor: ']'))