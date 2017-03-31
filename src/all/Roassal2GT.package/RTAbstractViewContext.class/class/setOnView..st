public
setOnView: aView
	"Set the context on the view"
	(aView hasAttribute: #GlamourContext) ifTrue: [ 
		(aView attributeAt: #GlamourContext) unregisterPreviousContext
	].
	aView attributeAt: #GlamourContext put: self new