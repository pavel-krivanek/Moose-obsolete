converting
asXPathString
	^ xpathString ifNil: [xpathString := self number asXPathString]