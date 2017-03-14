grammar
explicitConstructorInvocation

	^ (
		(	nonWildcardTypeArguments optional,
			((self tokenFor: 'this') / (self tokenFor: 'super')))
		
		/	(primary ,
			(self tokenFor: '.') ,
			nonWildcardTypeArguments optional,
			(self tokenFor: 'super'))) ,
		
		arguments , 
		(self tokenFor: ';')