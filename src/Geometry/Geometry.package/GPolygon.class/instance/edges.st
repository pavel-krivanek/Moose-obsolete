as yet unclassified
edges
	| firstVert prevVert |
	edges := OrderedCollection new.	
	firstVert := vertices at: 1.
	prevVert := firstVert.
	vertices allButFirstDo: [ :curVert |
		edges add: (GSegment with: prevVert with: curVert).
		prevVert := curVert ].
	edges add: (GSegment with: (vertices at: (vertices size)) with: firstVert).
	^ edges