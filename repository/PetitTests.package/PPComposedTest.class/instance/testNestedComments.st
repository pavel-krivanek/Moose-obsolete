testing
testNestedComments
	"C ::= B I* E"
	"I ::= !E (C | T)"
	"B ::= /*"
	"E ::= */"
	"T ::= ."
	
	| begin end any inside parser |
	begin := '/*' asParser.
	end := '*/' asParser.
	any := #any asParser.
	
	parser := PPDelegateParser new.
	inside := end not , (parser / any).
	parser setParser: begin , inside star , end.
	
	self assert: parser parse: '/*ab*/cd' end: 6.
	self assert: parser parse: '/*a/*b*/c*/'.
	self assert: parser fail: '/*a/*b*/c'