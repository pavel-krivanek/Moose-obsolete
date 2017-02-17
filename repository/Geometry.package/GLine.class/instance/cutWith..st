properties
cutWith: frame
| coll |
coll := OrderedCollection new.
frame edges
	collect: [ :edge | edge intersectionPointWithLine: self ]
	thenDo: [ :p |
		(p notNil and: [ coll noneSatisfy: [ :p2 | p2 =~ p ] ])
			ifTrue: [ coll add: p ] ] .
coll isEmpty
	ifTrue:  [ ^ nil ]
	ifFalse: [ ^ GSegment with: coll first with: coll second ]
					
