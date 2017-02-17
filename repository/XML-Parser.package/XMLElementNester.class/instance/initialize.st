initialization
initialize
	super initialize.

	openElements := OrderedCollection new: 10.
	hasExternalRootElement := false.
	wasRootElementEnded := false.
	isInElement := false.