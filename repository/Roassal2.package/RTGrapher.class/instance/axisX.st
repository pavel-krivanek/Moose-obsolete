public-axis
axisX
	| s |
	self checkIfDataSetHaveBeenAdded.
	s := super axisX.
	s scaleTransformation: self xScale.
	^ s