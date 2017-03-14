tokens
punctuation
	^ (PP2PredicateObjectNode anyOf: '.,"''?!;:#$%&()*+-/<>=@[]\^_{}|~')
			predicateMessage: 'punctuation expected';
			yourself.