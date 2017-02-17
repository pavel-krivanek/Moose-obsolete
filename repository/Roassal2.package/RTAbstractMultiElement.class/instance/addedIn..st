adding
addedIn: aView
	super addedIn: aView.
	ownedElements do: [ :c | c addedIn: aView ]