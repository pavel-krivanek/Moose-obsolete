accessing
attributeFilterAssigned
	^ $[ asParser, whitespace, attributeNameToken, whitespace, $= asParser, whitespace, string, whitespace, $] asParser 
		==> [ :nodes | 
			Array 
				with: nodes third
				with: nodes seventh ]