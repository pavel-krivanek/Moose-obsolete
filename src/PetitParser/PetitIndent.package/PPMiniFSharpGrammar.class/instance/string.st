as yet unclassified
string
	^ $" asParser, (#any asParser starLazy: $" asParser) flatten, $" asParser ==> [ :tokens | tokens second  ]