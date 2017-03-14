public-axis
axisY
	| s |
	self checkIfDataSetHaveBeenAdded.
	s := super axisY.
	s scaleTransformation: self yScale.
	^ s