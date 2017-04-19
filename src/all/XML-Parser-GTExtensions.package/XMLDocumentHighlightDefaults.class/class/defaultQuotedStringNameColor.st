accessing
defaultQuotedStringNameColor
	^ defaultQuotedStringNameColor
		ifNil: [
			defaultQuotedStringNameColor :=
				self textColorForShoutProperty: #self]