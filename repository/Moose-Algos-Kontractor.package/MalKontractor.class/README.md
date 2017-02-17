I'm a word compacting class. I remove the most used letters from a word to compact it to a given size. 

	(MalKontractor reduce: 'Hello' upTo: 3) 
		'Hlo'
		
	You can also remove some  elements using cut:
	
	(MalKontractor new 
			wordsToBeRemoved: #( 'Sea' 'WA' ) ;
			upTo: 3)
			reduce: 'WASeaSideba'
			
	returns 'idb'