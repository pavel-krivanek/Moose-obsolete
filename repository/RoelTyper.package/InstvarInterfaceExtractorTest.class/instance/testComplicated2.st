non supported
testComplicated2
	| collector |
	collector := self
		doForSource:
			'
		| temp1 temp2 |
		temp1 := b := temp2 := 3.'.
	self
		denyAssignments: #(#(#b #(#SmallInteger)))
		in: collector