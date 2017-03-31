accessing
defaultStringLiteralColor
	^ defaultStringLiteralColor
		ifNil: [defaultStringLiteralColor := self textColorForShoutProperty: #string]