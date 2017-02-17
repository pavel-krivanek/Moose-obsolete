grammar
innerCreator 

	^	(self tokenFor: '.'), (self tokenFor: 'new'),
		nonWildcardTypeArguments optional,
		identifier ,
		typeArguments optional,
		classCreatorRest 