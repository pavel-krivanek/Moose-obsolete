token
unaryToken
	^ super unaryToken
		==> [ :token | 
			(RBIdentifierToken value: token inputValue start: token start)
				comments: token comments;
				yourself ]