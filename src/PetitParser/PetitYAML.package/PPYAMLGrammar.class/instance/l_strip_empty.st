spec
l_strip_empty 
	^ (s_indent / s_indent_smaller, b_non_content ) star, l_trail_comments optional
	map: [:nonContent :comments |  '' ]