expressions
expr_print
	^ blanks, 'printf' asParser, blanks, expr_terminal ==> [:tokens | OrderedCollection with: #printf with: tokens fourth ]