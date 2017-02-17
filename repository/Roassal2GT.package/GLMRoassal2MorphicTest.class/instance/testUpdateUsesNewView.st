tests
testUpdateUsesNewView
	| browser originalView newView |
	browser := GLMWrapper new.
	browser show: [ :a | 
		a roassal2 painting: [:view :roassal2 :input | view add: RTElement new ]].
	window := browser openOn: $d.

	originalView := (self find: TRMorph in: window) trachelCanvas.
	browser panes first presentations first update.
	newView := (self find: TRMorph in: window) trachelCanvas.
	
	self assert: newView ~~ originalView
