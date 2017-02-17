testing-literals-characters
testCharacterLiteral7
	"not clear how this must be supported
	(see http://java.sun.com/docs/books/jls/third_edition/html/lexical.html#3.10.6)"
	"
	self 
		parse: '''\uFFFF'''
		rule: #characterLiteral"