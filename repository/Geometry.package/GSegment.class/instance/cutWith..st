properties
cutWith: frame
| coll |
coll := OrderedCollection new.
frame edges
	collect: [ :edge | edge intersectionPointWithSegment: self ]
	thenDo: [ :p |
		(p notNil and: [ coll noneSatisfy: [ :p2 | p2 =~ p ] ])
			ifTrue: [ coll add: p ] ].
coll ifEmpty: [ "self halt".
	(frame hasPoint: self v1)
		ifTrue:  [ ^ self ]
		ifFalse: [ ^ nil ] ].

coll size = 2 
	ifTrue: [ ^ GSegment with: coll first with: coll second ].

(frame hasPoint: self v1) 
	ifTrue:  [ ^ GSegment with: coll first with: self v1 ] 
	ifFalse: [ ^ GSegment with: coll first with: self v2 ]
							
	
