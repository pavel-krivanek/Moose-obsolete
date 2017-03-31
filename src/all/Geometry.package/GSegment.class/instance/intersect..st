properties
intersect: aSegment

(self v1 to: self v2 intersects: aSegment v1 to: aSegment v2) 
	ifTrue:	[^self asLine intersect: (aSegment asLine)]
	ifFalse: [^nil]
