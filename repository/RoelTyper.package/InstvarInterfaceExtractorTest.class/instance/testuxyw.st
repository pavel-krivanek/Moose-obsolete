send tests
testuxyw
	| collector |
	collector := self
		doForSource: '	u := (x asString ~= y printString). ^u = w'.
	self
		assertSends: #(#(#y #(#printString)) #(#x #(#asString)) #(#u #(#=)))
		in: collector