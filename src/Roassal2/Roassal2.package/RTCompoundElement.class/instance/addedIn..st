adding
addedIn: aView
	super addedIn: aView.
	"aView addAll: children."
	children do: [ :c | c addedIn: aView ].

	self doLayoutIfNecessary.
	self doNesting