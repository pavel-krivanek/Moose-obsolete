grammar-statements
tryStatement 

	^ (self tokenFor: 'try') , block ,
	(	(catches , (self tokenFor: 'finally') , block)
		/ catches
		/ finally 
	).