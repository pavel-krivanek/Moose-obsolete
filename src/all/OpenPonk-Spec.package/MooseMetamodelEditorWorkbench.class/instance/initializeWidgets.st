initialization
initializeWidgets

	super initializeWidgets.

	traitsModel := self instantiate: OPTraitsNavigator.
	
	self focusOrder add: traitsModel
