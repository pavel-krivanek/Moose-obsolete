accessing
defaultQuotedStringValueColor
	^ defaultQuotedStringValueColor
		ifNil: [defaultQuotedStringValueColor := self textColorForShoutProperty: #string]