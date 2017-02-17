accessing
breakpoints

	^ breakpoints ifNil: [ breakpoints := OrderedCollection new ]