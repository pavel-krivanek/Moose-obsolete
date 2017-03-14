*SmallDude-Utils
textForLines: aStringList 
	 
	| eol | 
	eol := String eol. 
	^aStringList 
		inject: '' 
		into: [:txt :line | txt , line , eol]