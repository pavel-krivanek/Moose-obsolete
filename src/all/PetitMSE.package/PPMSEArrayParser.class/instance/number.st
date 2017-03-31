values
number
	^ super number
	
	==> [ :token | (token inputValue copyReplaceAll: 'E' with: 'e') asNumber ]