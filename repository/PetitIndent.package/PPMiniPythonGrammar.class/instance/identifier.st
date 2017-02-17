grammar
identifier
	| id letter digit |
	letter := #letter asParser.
	digit := #digit asParser.
	
	id := ((letter / '_' asParser), ( letter / digit / '_' asParser )  star).
	
	^ id flatten