private
onCanonicalLineBreakJoin: aLineCollection
	^ self
		onLineBreak: XMLWriter canonicalLineBreak
		join: aLineCollection