private
eventForCursor: propagate order: order
	| p1 p2 pmin pmax e1 e2 res |
	self adjustPosition: order.
	p1 := cursorMin position.
	p2 := cursorMax position.
	e1 := extremity1 position.
	e2 := extremity2 position.
	pmin := (p1 x - e1 x)/ (e2 x - e1 x).
	pmin := (pmin * (max - min)) + min.
	pmax := (p2 x - e1 x)/(e2 x - e1 x).
	pmax := (pmax * (max - min))+min.
	res := Array with: pmin with: pmax.
	propagate ifTrue: [ 
		callback rtValue: res.
		self updateLineCursor ].
	self updateLabel: order 
		with: (order ifTrue: [ pmin ] ifFalse: [ pmax ] ).
	^ res