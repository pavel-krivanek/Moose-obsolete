spec
l_comment 	
	^ 
		(#startOfLine asParser, #eof asParser) not, "if the line is last and empty, do not consume it"
		s_separate_in_line, c_nb_comment_text optional, b_comment