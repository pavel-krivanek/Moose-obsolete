helpers
createAxisIfNecessary: aView
	self createAxisXIfNecessary: aView.
	self createAxisYIfNecessary: aView.
	aView edges do: #pushBack 