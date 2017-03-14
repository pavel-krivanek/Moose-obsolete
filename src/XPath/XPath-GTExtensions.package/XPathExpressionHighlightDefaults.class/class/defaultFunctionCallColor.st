accessing
defaultFunctionCallColor
	^ defaultFunctionCallColor
		ifNil: [defaultFunctionCallColor := self textColorForShoutProperty: #keyword].