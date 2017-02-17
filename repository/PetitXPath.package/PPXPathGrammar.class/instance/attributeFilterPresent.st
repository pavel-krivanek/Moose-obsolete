accessing
attributeFilterPresent
	^ $[ asParser, whitespace, attributeNameToken, whitespace, $] asParser 
		==> [ :nodes | 
			Array 
				with: nodes third
				with: '*' ]