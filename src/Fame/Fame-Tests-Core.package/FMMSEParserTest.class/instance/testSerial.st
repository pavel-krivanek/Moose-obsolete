running
testSerial
	p fromString: '(id:42)'.
	p Serial.
	r contents should = #(#(#serial: 42)).
	p atEnd should beTrue.
	self setUp.
	p fromString: '(  id:  42  )'.
	p Serial.
	r contents should = #(#(#serial: 42)).
	p atEnd should beTrue.
	self setUp