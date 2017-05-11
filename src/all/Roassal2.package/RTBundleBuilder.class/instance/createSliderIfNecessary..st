rendering-utility
createSliderIfNecessary: aView
	| bedges slider |
	sliderShape ifNil: [ ^ self ].
	bedges := aView edges select: [ :e | e shape = bezier ].
	slider := RTSlider new.
	slider shape shape: sliderShape. 
	slider move: #below; view: aView; callback: [:v| 
		bezier tension: v.
		bedges do: [ :e | e trachelShape points: (bezier getListOfPointsForTrachel: e); resetPath.].
	].

	slider build.