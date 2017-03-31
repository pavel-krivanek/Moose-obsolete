grammar-expressions
andExpression

	^ equalityExpression , ((self tokenFor: '&') , equalityExpression) star