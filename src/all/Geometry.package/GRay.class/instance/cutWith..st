properties
cutWith: frame
| coll |
coll := OrderedCollection new.
frame edges
	collect: [ :edge | edge intersectionPointWithRay: self ]
	thenDo: [ :p |
		(p notNil and: [ coll noneSatisfy: [ :p2 | p2 =~ p ] ])
			ifTrue: [ coll add: p ] ] .
coll isEmpty ifTrue:[^ nil]
				 ifFalse:[coll size = 2 
					ifTrue:  [ ^GSegment with: coll first with: coll second ]
					ifFalse: [ ^GSegment with: coll first with: self origin ] ]