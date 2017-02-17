grammar
primary 

	^		parExpression 
		/(	(self tokenFor: 'this'),
			((self tokenFor: '.'), identifier ) star,
			identifierSuffix optional)
		/	identifierWithAccessors
		/(	(self tokenFor: 'super'), superSuffix )
		/	literal
		/	creator
		/(	primitiveType,
			emptySquaredParenthesis star,
			(self tokenFor: '.'), (self tokenFor: 'class'))
		/(	(self tokenFor: 'void'), (self tokenFor: '.'), (self tokenFor: 'class'))
			