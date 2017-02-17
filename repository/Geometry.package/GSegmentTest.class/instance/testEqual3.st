as yet unclassified
testEqual3
	|segm1 segm2 |
	segm1 := GSegment with: ( -24.494897427831784 @ -24.494897427831795 ) with: ( 24.494897427831784 @ 24.49489742783178 ).
	segm2 := GSegment with: ( 24.494897427831784 @ 24.49489742783178 ) with: ( -24.494897427831784 @ -24.494897427831795 ).

	self assert: (segm1 = segm2)
	equals:true