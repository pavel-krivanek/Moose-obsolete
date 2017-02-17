running
testSimpleDocument
	p fromString: '()'.
	p Document.
	r contents should = #(#(#beginDocument) #(#endDocument)).
	p atEnd should beTrue.
	r reset.
	p fromString: '  (  )  '.
	p Document.
	r contents should = #(#(#beginDocument) #(#endDocument)).
	p atEnd should beTrue