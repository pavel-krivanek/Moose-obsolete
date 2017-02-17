token
keywordToken
	^ super keywordToken
		==> [ :token | 
			(RBKeywordToken value: token inputValue start: token start)
				comments: token comments;
				yourself ]