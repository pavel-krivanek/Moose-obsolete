converting
asXPathString
	^ xPathString ifNil: [xPathString := self number asXPathString]