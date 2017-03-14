callbacks
addCallback: aCallback
	"Add a call back to only one subshape. This is necessary for example when one does not want to trigger many times the same callback when an action occurs"
	^ self firstShape addCallback: aCallback