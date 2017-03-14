testing
isPointOverTheBuilder: aPoint
	"Return true of false on whether the provided point is above the builder.
	Note that the point is translated from the camera"
	| pp |
	pp := self convertPointForGraph: aPoint.
	
	"Humm... I am not sure this is the best way to do this. What happens if the view is embedded?"
	^ pp >= (0 @ 0) and: [ pp <= builder extent ]