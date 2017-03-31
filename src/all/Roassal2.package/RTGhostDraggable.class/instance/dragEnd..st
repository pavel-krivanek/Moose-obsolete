announcement handling
dragEnd: ann
	ann element translateTo: ghost position.
	ghost remove.
	ghost := nil.
	ann element view signalUpdate