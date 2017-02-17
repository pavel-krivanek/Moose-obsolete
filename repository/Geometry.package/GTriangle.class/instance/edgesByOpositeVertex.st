accessing
edgesByOpositeVertex

	^ edgesByOpositeVertex ifNil: [
		edgesByOpositeVertex := {
			v1 -> (GSegment with: v2 with: v3) .
			v2 -> (GSegment with: v3 with: v1) .
	   		v3 -> (GSegment with: v1 with: v2)  } asDictionary ]