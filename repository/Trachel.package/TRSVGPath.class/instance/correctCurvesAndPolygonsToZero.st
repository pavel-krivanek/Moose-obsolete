private
correctCurvesAndPolygonsToZero
	"Center of polygons is stored in originalPosition and the center is moved to 0@0."
	| originalPosition absolute key args|
	self computeRectangle.
	originalPosition := rectangle center.
	absolute := true.
	curves do: [ :curve |
		key := curve first.
		args := curve second.
		key =#absolute ifTrue: [ absolute :=true ].
		key =#relative ifTrue: [ absolute :=false ].
		absolute ifTrue: [ 
			args doWithIndex: [ :eachPoint :index| 
				args at: index put: eachPoint - originalPosition] ].
		].
	polygons
		do: [ :eachPolygon | eachPolygon doWithIndex: [ :eachPoint :index | eachPolygon at: index put: eachPoint - originalPosition ] ].
	self computeRectangle.