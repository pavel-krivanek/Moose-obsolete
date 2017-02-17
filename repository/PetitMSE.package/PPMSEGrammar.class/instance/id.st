grammar
id
	^ open , 'id:' asParser , #digit asParser star token trim , close