*Moose-RoassalPaintings
viewLattice: aLattice
	| view |
	
	view := RTMondrian new.
	self viewLattice: aLattice on: view.
	^ view open