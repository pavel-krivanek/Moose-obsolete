accessing
defaultNameColor
	^ defaultNameColor
		ifNil: [defaultNameColor := self textColorForShoutProperty: #instVar]