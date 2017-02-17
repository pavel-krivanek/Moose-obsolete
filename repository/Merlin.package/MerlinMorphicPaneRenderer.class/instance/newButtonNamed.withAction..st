util - morph creation
newButtonNamed: aString withAction: selector
	"use this method to create a new classic button that will execute the method designed by selector when clicked. The method selector must be defined and implemented."
	
	| button |
	button := PluggableButtonMorph on: self getState: nil action: selector.
	button label: aString.
	^button