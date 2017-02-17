grammar-expressions
exclusiveOrExpression

	^ andExpression , ((self tokenFor: '^') , andExpression) star