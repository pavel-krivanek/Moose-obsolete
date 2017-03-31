accessing
defaultOperatorColor
	^ defaultOperatorColor
		ifNil: [defaultOperatorColor := self textColorForShoutProperty: #binary]