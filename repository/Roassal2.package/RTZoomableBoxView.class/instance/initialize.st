initialization
initialize
	super initialize.
	self allowNegatedBox: false.
	self when: RTSelectionEnd do: [:e| self updateScale: e. ].