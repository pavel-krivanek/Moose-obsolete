testing-chars
testStartOfLogicalLine
	| parser |
	parser := #startOfLogicalLine asParser, #any asParser star.
	
	self assert: parser parse: 'lorem'.
	self assert: parser fail: ' lorem'.
	
	parser := #any asParser, #startOfLogicalLine asParser, #any asParser star.
	self assert: parser fail: 'lorem'.
	self assert: parser fail: '        lorem'.
	self assert: parser parse: ' lorem'.
	self assert: parser parse: '	lorem'.