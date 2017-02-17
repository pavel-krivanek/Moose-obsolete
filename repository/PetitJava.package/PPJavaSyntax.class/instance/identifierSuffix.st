grammar-expressions
identifierSuffix 

	^ (		emptySquaredParenthesis plus , (self tokenFor: '.'), (self tokenFor: 'class'))
		/	(((self tokenFor: '[') , expression , (self tokenFor: ']')) plus)
		/	arguments 
		/	((self tokenFor: '.'),
			(	(self tokenFor: 'class')
			/	(self tokenFor: 'this')
			/	((self tokenFor: 'super'), arguments)
			/	(nonWildcardTypeArguments , identifier , arguments)))
		/	innerCreator