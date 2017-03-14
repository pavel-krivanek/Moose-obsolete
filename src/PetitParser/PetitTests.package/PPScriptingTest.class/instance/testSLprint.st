tests
testSLprint
	self 
		assert: self straightLineParser
		parse: 'print(3,4)'
		to: #(('print' $( ((($3 ()) ()) () (($, ((($4 ()) ()) ())))) $)) ())