printing
printOn: aStream 
	 
	super printOn: aStream. 
	aStream space 
		print: 
			([self mooseName] 
				on: Error 
				do: ['Error printing the object'])