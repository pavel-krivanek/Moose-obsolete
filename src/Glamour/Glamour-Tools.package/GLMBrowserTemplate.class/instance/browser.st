accessing
browser
	^ browser ifNil: [self buildBrowser. browser]