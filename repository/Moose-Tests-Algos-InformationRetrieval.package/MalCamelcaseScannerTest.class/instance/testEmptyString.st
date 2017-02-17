running
testEmptyString
	
	
		self assert: (MalCamelcaseScanner scan: '') isEmpty.
	
		self assert: (MalCamelcaseScanner scan: '     ') isEmpty