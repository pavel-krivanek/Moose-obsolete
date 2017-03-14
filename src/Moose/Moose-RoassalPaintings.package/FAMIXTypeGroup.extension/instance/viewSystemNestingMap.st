*Moose-RoassalPaintings
viewSystemNestingMap
	| view |
	view := RTView new.
	self viewSystemNestingMapOnRaw: view.
	view open