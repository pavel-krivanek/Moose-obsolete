grammar
funcDef
	^ 'def' asParser, blank, identifier trimBlanks, whatever, suiteTrimmed
	map: [ :_def :_sep :_name :_we :_body |
		{ 'fundef:' . _name . _body . ':fundef' }
	]