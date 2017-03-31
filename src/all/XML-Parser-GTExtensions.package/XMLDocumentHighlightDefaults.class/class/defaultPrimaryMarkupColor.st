accessing
defaultPrimaryMarkupColor
	^ defaultPrimaryMarkupColor
		ifNil: [defaultPrimaryMarkupColor := self textColorForShoutProperty: #argument]