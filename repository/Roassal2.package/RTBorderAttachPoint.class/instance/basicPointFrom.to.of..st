public - hooks
basicPointFrom: fromElement to: toElement of: anEdge
	| source target line shift |
	source := self geometryFor: fromElement.
	target := self geometryFor: toElement.
	shift := self offsetNormalFor: anEdge.
	line := GLineSegment from: source center to: target center.
	shift := (line vector = (0@0) 
		ifTrue: [ -1 @ 0]
		ifFalse: [ line vector normal ]) * shift.
	anEdge from = toElement
		ifTrue: [ shift := shift * -1 ].
	line := GLineSegment from: source center + shift to: target center + shift.
	^ self borderPointFrom: source to: target via: line