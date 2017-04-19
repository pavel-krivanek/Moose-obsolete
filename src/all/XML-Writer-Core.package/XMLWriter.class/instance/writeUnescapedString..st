private
writeUnescapedString: aString
	self
		writeUnescapedString: aString
		quotedBy:
			((aString includes: $")
				ifTrue: [$']
				ifFalse: [$"])