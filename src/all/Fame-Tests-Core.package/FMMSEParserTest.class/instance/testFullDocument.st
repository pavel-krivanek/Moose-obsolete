running
testFullDocument
	r reset.
	p fromString: self class famix30mse.
	p Document.
	r contents first should = #(#beginDocument).
	r contents size should > 200.	" = many"
	r contents last should = #(#endDocument).
	p atEnd should beTrue