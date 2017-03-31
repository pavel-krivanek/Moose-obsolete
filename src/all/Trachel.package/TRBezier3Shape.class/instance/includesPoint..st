testing
includesPoint: aPoint 
	| delta points p1 p2 |
	delta := 5.
	points := self points.
	1 to: points size -1 do: [ :i |
		p1 := points at: i.
		p2 := points at: i + 1.
		(aPoint onLineFrom: p1 to: p2 within: delta) ifTrue: [ ^ true ] ].
	^ false.