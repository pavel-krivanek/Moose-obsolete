converting
asXPathNumber
	^ xPathNumber ifNil: [xPathNumber := self string asXPathNumber]