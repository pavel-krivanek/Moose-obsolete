accessing
defaultCDataColor
	^ defaultCDataColor
		ifNil: [defaultCDataColor := self textColorForShoutProperty: #primitive]