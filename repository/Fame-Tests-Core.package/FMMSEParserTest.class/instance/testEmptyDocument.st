running
testEmptyDocument
	p fromString: ''.
	p Document.
	r contents should = #(#(#beginDocument) #(#endDocument)).
	p atEnd should beTrue