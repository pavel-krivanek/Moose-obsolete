grammar
suiteTrimmed
	^  
	(indent not, (space / comment)) star,
		suite,
	(emptyLine, newline) star
		
	==> #second
