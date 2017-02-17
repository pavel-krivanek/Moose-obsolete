grammar
classDef
	^ 'class' asParser, blank, identifier trimBlanks, whatever, suiteTrimmed
	map: [ :_def :_sep :_name :_we :_body |
		{ 'class:' . _name . _body . ':class' }
	]