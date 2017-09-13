Roassal2 - updating
update
	self rtEdge shape
		color: self style strokeColor;
		width: self style strokeWidth.
	self rtEdge update.
	self view ifNotNil: [ self view signalUpdate ]