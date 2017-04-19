accessing
defaultPIColor
	^ defaultPIColor
		ifNil: [defaultPIColor := self textColorForShoutProperty: #primitive]