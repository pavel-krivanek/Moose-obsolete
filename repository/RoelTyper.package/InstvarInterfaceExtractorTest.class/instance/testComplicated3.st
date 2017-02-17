non supported
testComplicated3
	"self run: #testComplicated3"

	"selfdebug: #testComplicated3"

	| collector |
	collector := self
		doForSource:
			'
		| temp1 temp2 temp3 |
		temp2 := b := temp1 := 3.'.
	self
		denyAssignments: #(#(#b #(#SmallInteger)))
		in: collector