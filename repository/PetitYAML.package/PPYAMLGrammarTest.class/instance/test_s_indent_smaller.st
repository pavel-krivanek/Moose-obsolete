spec
test_s_indent_smaller
	| s_indent p |

	s_indent := self parserInstance s_indent_smaller.
	s_indent name: 's_indent'.
	p := s_indent, 'a' asParser. 
	
	context YAMLN: 3.
	self assert: p parse: 
'  a'.

	self assert: p parse: 
' a'.

	self assert: p fail: 
'   a'.