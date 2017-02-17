grammar
withStmt
	^ 'with' asParser, (blank / colon) and, whatever, 
		suiteTrimmed
   map: [ :_with :sep :_we :_body |
		{ 'with:' . _body . ':with' }
	]