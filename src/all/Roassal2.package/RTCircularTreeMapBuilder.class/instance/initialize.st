initialization
initialize
	super initialize.
	self shape circle
		fillColor: Color white;
		borderColor: Color gray.
	self interaction popup.
	baseradius := self defaultBase.