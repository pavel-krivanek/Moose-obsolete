instance creation
new: aCollectionOfNumbers 
	"	for an array of numbers sorted descending  
		ensures that the diference between any number and it's successor is larger than a givven value 
		this is achived by incrementally trying to push the numbers appart 
		why? so that clusters of numbers with very close values remain visible  
	" 
	 
	^(super new) 
		data: aCollectionOfNumbers; 
		maxIterations: 100; 
		upperBound: aCollectionOfNumbers first; 
		yourself