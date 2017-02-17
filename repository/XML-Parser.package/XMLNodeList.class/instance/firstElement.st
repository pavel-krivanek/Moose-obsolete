accessing
firstElement
	self elementsDo: [:each | ^ each].
	^ self defaultValue.