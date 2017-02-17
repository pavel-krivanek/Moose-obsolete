public - hooks
attachPointsFor: anEdge on: anElement
	"Return the four possible attach points for each of the four sides for given edge on given element."
	| rec center |
	rec := anElement encompassingRectangle.
	center := rec center.
	^ Array 		
		 "right side"
		with: (rec right @ (center y))
		"left side"
		with: (rec left @ (center y))
	