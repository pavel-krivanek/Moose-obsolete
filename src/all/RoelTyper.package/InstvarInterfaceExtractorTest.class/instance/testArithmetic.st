assignment tests
testArithmetic
	"self run: #testArithmetic"

	| collector |
	collector := self
		doForSource:
			'u := v \\ 3. a := b floor. b := c truncateTo: (x := 4 roundTo: 5)'.
	self
		assertSends: #(#(#v #(#\\)) #(#b #(#floor)) #(#c #(#truncateTo:)))
		in: collector.
	self
		assertAssignments:
			#(#(#u #(#Number)) #(#a #(#Number)) #(#b #(#Number)) #(#x #(#Number)))
		in: collector