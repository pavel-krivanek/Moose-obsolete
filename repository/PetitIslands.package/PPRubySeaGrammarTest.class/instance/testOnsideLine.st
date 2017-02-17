as yet unclassified
testOnsideLine
	self parse: 'aaa' rule: #onsideLine.
	self fail: '  aaa' rule: #onsideLine.