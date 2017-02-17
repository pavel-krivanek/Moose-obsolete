grammar
try2Stmt
	^ 'try' asParser, colon trimBlanks, suiteTrimmed,
		(align, 'finally' asParser, ':' asParser trimBlanks, suiteTrimmed  ==> #fourth)
	map: [ :_try :_colon :_body :_finally |
		{ 'try:' ._body . _finally . ':try' }
	]