initialization
initialize
	super initialize.
	layoutBuilder := RTLayoutBuilder new.
	layoutBuilder sunburstWithArcWidth: 25.
	self leafWeight: 1.
	self shape arc color: [ Color random ].
	self interaction popup.
	maxLevel := 0.