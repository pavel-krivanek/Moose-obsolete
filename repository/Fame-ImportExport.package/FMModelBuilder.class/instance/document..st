DSL
document: body
	"Creates a document with body (which is a block)."
	 
	client beginDocument.
	body valueWithPossibleArgument: self.
	client endDocument.