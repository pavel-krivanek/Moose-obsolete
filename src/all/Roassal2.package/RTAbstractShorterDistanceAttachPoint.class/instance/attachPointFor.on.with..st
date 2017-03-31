util
attachPointFor: anEdge on: referenceElement with: elementsPossibleAttachPoints
	"Returns the attach point having the shortest route for given edge on given element."
	| p dp t |
	"We take an arbitrary point. The center of the reference point"
	p := referenceElement encompassingRectangle center.
	
	"We get the list of dot products"
	dp := elementsPossibleAttachPoints collect: [ :pp | 
		t := p - pp.
		Array with: (t dotProduct: t) with:  pp ].
	
	"We look for the shortest path and return the point"
	^ (dp inject: dp first into: [ :shorter :el | (shorter first < el first) ifTrue: [ shorter ] ifFalse: [ el ]]) second