grammar
block 

	^ (self tokenFor: '{') ,
		blockStatements,
	 (self tokenFor: '}')