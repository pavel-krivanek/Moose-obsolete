grammar
identifierWithAccessors
	^ identifier,
	((self tokenFor: '.'), identifier ) star,
	identifierSuffix optional