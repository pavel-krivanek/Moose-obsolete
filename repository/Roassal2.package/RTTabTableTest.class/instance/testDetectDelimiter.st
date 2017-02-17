tests
testDetectDelimiter
	data := 'm1	m2	m3
1	2	5
2	5	4
1	7	4'.
	self assert: (tab detectDelimiterIn: data) equals: Character tab