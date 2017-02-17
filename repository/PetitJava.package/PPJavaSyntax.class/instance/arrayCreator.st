grammar
arrayCreator

	^ 	(	(self tokenFor: 'new') , createdName ,
			emptySquaredParenthesis plus,
			arrayInitializer)
			
		/(	(self tokenFor: 'new'), createdName ,
			((self tokenFor: '['), expression , (self tokenFor: ']')) plus,
			emptySquaredParenthesis star)