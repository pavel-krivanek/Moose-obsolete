tests
testDetectDelimiter1
	data := 'm1	m2	m3'.
	self assert: (tab detectDelimiterIn: data) equals: Character tab