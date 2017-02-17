send tests
testxyw
	| collector |
	collector := self
		doForSource:
			'
		| t |
		t := (x = y).
		^t = w'.
	self
		assertSends: #(#(#x #(#=)))
		in: collector