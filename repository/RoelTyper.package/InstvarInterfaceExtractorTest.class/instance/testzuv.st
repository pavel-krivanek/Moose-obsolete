send tests
testzuv
	| collector |
	collector := self doForSource: '^u ~= z or: [u = v]'.
	self
		assertSends: #(#(#u #(#= #~=)))
		in: collector