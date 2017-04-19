initialization
currentColor
	| rawColor |
	rawColor := self palette at: colorIndex + 1.
	self isNotTransparent
		ifTrue: [ ^ rawColor ].
	^ rawColor alpha: self transparency