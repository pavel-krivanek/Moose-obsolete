tests - method
testMethod7
	self parse: 'public int read(byte b) throws IOException {
		return b;
    }' 
	rule: #methodDef.
	
	self assert: result isPetitFailure not.
	self assert: result simpleName = 'read'.
	self assert: result returnType = 'int'.	