as yet unclassified
testExtendSegmVert
	| segm1 segm2 segm3 frame |
	segm1 := (GSegment with: -2 @ 4 with: 2 @ 4).
	segm2 := (GSegment with: -2 @ 2 with: -2 @ 4).
	segm3 := (GSegment with: -2 @ 2 with: 2 @ 4).
	frame := Rectangle origin: -5 @ 0 corner: 5 @ 5.
	self
		assert: ( segm1 extendSegmVert: 2 @ 4 to: frame )
		equals: ( GSegment with: -2 @ 4 with: 5 @ 4 ).
	self
		assert: ( segm1 extendSegmVert: -2 @ 4 to: frame )
		equals: ( GSegment with: -5 @ 4 with: 2 @ 4 ).	
	self
		assert: ( segm2 extendSegmVert: -2 @ 2 to: frame )
		equals: ( GSegment with: -2 @ 0 with: -2 @ 4 ).	
	self
		assert: ( segm2 extendSegmVert: -2 @ 4 to: frame ) 
		equals: ( GSegment with: -2 @ 2 with: -2 @ 5 ).
	self
		assert: ( segm3 extendSegmVert: -2 @ 2 to: frame )
		equals: ( GSegment with: -5 @ (1/2) with: 2 @ 4 ).
	self
		assert: ( segm3 extendSegmVert: 2 @ 4 to: frame )
		equals: ( GSegment with: -2 @ 2 with: 4 @ 5 ).	