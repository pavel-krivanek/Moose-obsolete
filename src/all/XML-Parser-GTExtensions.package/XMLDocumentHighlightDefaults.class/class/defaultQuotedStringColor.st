accessing
defaultQuotedStringColor
	^ defaultQuotedStringColor
		ifNil: [defaultQuotedStringColor := self textColorForShoutProperty: #string]