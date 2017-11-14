initialization
defaultLine
	| bezier points |
	"TODO, we need to create a RTBezier4Line"
	bezier := RTBezier4Line new.
	bezier attachPoint: RTSankeyAttachPoint new.
	lineShape shape: bezier.
	points := [ :e | | x y1 y2 |
		x := (e from position x + e to position x) / 2.
		y1 := e from position y + (e attributes at: #sy) + ((e attributes at: #dy)/2) - ((e from attributes at: #dy)/2).
		y2 := e to position y + (e attributes at: #ty) + ((e attributes at: #dy)/2) - ((e to attributes at: #dy)/2).
		Array with: x@y1 with: x @ y2 ].
	bezier widthElement: [ :e |
		(e attributes at: #dy ifAbsent: [1]) max: 1 ];
		controllingElements: [ :e | 
			(e attributes includesKey: #dy)
				ifTrue: [ points value: e ]
				ifFalse: [ Array with: 0@0 with: 0@0 ] ].
	