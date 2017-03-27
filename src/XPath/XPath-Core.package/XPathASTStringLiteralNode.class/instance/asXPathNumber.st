converting
asXPathNumber
	^ xpathNumber ifNil: [xpathNumber := self string asXPathNumber]