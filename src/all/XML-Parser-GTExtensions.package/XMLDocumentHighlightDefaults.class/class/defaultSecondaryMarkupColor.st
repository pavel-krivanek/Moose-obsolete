accessing
defaultSecondaryMarkupColor
	^ defaultSecondaryMarkupColor
		ifNil: [defaultSecondaryMarkupColor := self textColorForShoutProperty: #self]