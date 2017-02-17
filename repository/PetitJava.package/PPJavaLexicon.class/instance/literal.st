grammar-literals
literal
	"a literal must be a single token. Whitespaces are not allowed inside the literal"
	
	^ nullLiteral / booleanLiteral / floatingPointLiteral / integerLiteral / characterLiteral / stringLiteral