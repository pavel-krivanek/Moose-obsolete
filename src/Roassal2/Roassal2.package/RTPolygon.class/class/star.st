instance creation
star
	"
		self star
	"

	| star5Points outerPoints innerPoints innerRadius ar |
	star5Points := Array new: 10.
	outerPoints := self generateUnitNgonPoints: 5 rotation: 0.
	innerPoints := self generateUnitNgonPoints: 5 rotation: Float pi / -5.
	"Outer radius is 1; inner radius of star is smaller"
	innerRadius := 0.5 * (3 - 5 sqrt) * 1.57.
	innerPoints
		doWithIndex: [ :p :i | innerPoints at: i put: (p x * innerRadius) @ (p y * innerRadius) ].
	star5Points
		doWithIndex: [ :p :i | 
			ar := i even
				ifTrue: [ outerPoints ]
				ifFalse: [ innerPoints ].
			star5Points at: i put: (ar at: i // 2 + (i % 2)) ].
	star5Points := self fitPolygonToSquare: star5Points.
	^ self new
		vertices: star5Points;
		yourself