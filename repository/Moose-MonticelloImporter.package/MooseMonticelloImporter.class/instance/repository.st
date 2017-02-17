public
repository
	^ repositoryCache ifNil: [ self setRepository. ^ repositoryCache ]