accessing
defaultDefaultColor
	^ defaultDefaultColor
		ifNil: [defaultDefaultColor := self textColorForShoutProperty: #default]