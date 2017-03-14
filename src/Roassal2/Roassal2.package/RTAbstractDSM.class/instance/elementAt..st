accessing
elementAt: aPoint
	"Return the element at position aPoint"
	^ elements at: (objectsX size) * (aPoint y - 1) + aPoint x