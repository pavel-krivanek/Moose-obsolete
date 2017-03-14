accessing
number
	| digit |
	digit := #digit asParser.
   ^ digit plus olToken ==> [ :token | token inputValue asNumber ]