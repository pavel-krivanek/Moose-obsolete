initialization
initialize
	super initialize.
	self matrix: nil.
	self shape arc.
	self lineShape: RTLine new.
	self innerRadius: 0.
	self columnGap: 2.
	self rowGap: 2.
	self externalRadius: 240.
	self columnGap: 0.
	self columnBlock: #yourself.
	self rowBlock: #yourself.