convertion
fromPixelToSpaceForRectangle: aRectangle
	"Return a new rectangle that corresponds to the projection of the argument (expressed in the space coordinate) into the pixels coordinate"
	^ (self fromPixelToSpace: aRectangle topLeft) corner: (self fromPixelToSpace: aRectangle bottomRight)