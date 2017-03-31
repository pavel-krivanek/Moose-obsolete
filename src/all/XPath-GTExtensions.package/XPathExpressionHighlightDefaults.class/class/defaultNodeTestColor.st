accessing
defaultNodeTestColor
	^ defaultNodeTestColor
		ifNil: [defaultNodeTestColor := self textColorForShoutProperty: #instVar]