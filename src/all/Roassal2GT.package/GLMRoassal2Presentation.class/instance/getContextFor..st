context
getContextFor: aView
	"Return the context associated to the view. It none is defined, then this method create one, and set it in view."
	| context |
	context :=  RTAbstractViewContext getContextFor: aView.
	context view: aView.
	context presentation: self. 
	^ context