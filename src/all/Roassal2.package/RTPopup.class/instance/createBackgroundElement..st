private
createBackgroundElement: aColor
	| shape |
	shape := RTBox new color: (aColor alpha: self alphaPopupBackground).
	self hasBorder ifTrue: [ shape borderColor: borderColor; borderWidth: 3 ].
	^ shape element