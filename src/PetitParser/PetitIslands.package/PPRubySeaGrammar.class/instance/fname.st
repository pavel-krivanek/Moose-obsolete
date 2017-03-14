grammar
fname
	^ (operator / 
		'..' asParser / '|' asParser / 'ˆ' asParser / '&' asParser 
		/ '<=>' asParser / '==' asParser / 
		'===' asParser / '=~' asParser / '>'asParser / '>='asParser / '<' asParser / 
		'<=' asParser / '+' asParser / '-' asParser / 
		'*' asParser / '/' asParser /	'%' asParser / '**' asParser / '<<' asParser / 
		'>>' asParser / '~' asParser / '+@' asParser / 
		'-@' asParser / '[]' asParser / '[]=' asParser)
