grammar
tripleQuotString
	| quot |
	quot := 	'''''''' asParser.
		
		
 	^ quot, quot negate star, quot ==> [ :e | #() ]