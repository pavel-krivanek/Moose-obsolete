spec
l_empty
	^	(	s_line_prefix /
			s_indent_smaller),
			b_as_line_feed 
	map: [ :prefix :lf |
		prefix asString, lf asString
	]