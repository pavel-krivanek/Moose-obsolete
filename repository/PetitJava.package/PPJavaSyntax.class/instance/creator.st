grammar
creator
		
	^	(	(self tokenFor: 'new'), nonWildcardTypeArguments optional , classOrInterfaceType , classCreatorRest)
		/	arrayCreator