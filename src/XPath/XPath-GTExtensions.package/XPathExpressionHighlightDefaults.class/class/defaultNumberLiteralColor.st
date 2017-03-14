accessing
defaultNumberLiteralColor
	^ defaultNumberLiteralColor
		ifNil: [defaultNumberLiteralColor := self textColorForShoutProperty: #number]