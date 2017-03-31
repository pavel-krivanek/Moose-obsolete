accessing
defaultAxisColor
	^ defaultAxisColor
		ifNil: [defaultAxisColor := self textColorForShoutProperty: #self]