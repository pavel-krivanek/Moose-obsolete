utility
renderLinesFor: elems in: aView
	"Render the lines between elements if necessary"
	| t l |
	shouldConnect ifFalse: [ ^ self ].

	t := elems first.
	elems allButFirst
		do: [ :tt | 
			l := lineBuilder edgeFrom: t to: tt.
			interaction setUpElement: l.
			aView add: l.
			t := tt ]