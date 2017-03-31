positioning
pushBackNCName: anNCName position: aPosition
	self pushBackToken:
		(XPathPushedBackNCNameToken
			value: anNCName
			position: aPosition)