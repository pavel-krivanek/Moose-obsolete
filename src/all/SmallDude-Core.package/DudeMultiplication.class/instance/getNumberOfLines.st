properties
getNumberOfLines 
	 
	^self fragments 
		inject: 0 
		into: [:result :elem | result + elem fragmentLength]