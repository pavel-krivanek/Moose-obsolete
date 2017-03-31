morph content setup tools
newButtonNamed: aString withAction: selector andArguments: aCollectionOfArguments
	"use this method to create a new classic button that will execute the method designed by selector when pressed with the arguments aCollectionOfArguments. The method selector must define and implemented in the subclass"
	
	<lint: 'Methods implemented but not sent' rationale: 'method provided  to the user of the library' author: 'cyrille.delaunay'>
	
	| button |
	button := PluggableButtonMorphPlus on: self getState: nil action: selector.
	button label: aString.
	button arguments: aCollectionOfArguments .
	^button