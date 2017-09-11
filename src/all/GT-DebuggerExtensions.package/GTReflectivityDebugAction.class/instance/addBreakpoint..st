adding
addBreakpoint: aBreakpoint

	aBreakpoint targetAction: self.
	^ self breakpoints add: aBreakpoint