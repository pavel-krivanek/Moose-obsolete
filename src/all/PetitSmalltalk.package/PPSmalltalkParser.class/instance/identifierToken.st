token
identifierToken
	^ super identifierToken
		==> [ :token | 
			(RBIdentifierToken value: token inputValue start: token start)
				comments: token comments;
				yourself ]