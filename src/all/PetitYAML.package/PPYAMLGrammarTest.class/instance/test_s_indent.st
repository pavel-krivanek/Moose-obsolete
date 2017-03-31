spec
test_s_indent
	| s_indent p |

	s_indent := self parserInstance s_indent.
	s_indent name: 's_indent'.
	p := s_indent, 'a' asParser. 
	
	context YAMLN: 3.
	self assert: p parse: 
'  a'.

	self assert: p fail: 
' a'.

	self assert: p fail: 
'   a'.

	context YAMLN: 1.
	self assert: p parse: 
'a'.