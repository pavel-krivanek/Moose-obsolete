visiting - steps
visitAncestorOrSelfStep: anAncestorOrSelfStep
	self emitAll: ' ancestorOrSelfAxis:'.
	^ super visitAncestorOrSelfStep: anAncestorOrSelfStep.