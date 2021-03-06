control points
midPointInCenterOfElements: aOneArgBlockOrValues
	"Argument can be a OneArgBlock (taking an edge as argument) or direct values"
	| b |
	b := [ :edge |
		| center intermediaryElement elements |
		elements := aOneArgBlockOrValues rtValue: edge.
		(elements isNil or: [ elements isEmpty ]) 
			ifTrue: [ #() ]
			ifFalse: [ 
				center := (RTGroup withAll: elements) center.
				intermediaryElement := RTBox element.
				intermediaryElement translateTo: (edge from position + center) / 2.
				Array with: intermediaryElement ] ].

	self controllingElements:  b