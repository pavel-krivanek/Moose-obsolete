accessing
isExtension
	"The receiver is an extension when is defined in a different package to the one of its parent"
	
	^ self parent package ~= self package