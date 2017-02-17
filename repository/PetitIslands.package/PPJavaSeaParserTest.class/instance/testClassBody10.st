tests - class
testClassBody10
	self parse: '{
    private static final int SKIP_BUFFER_SIZE = 2048;
   	 public int read(byte b[]) throws IOException {
		return read(b, 0, b.length);
    }
}' 
	rule: #classBody.
	
	self assert: result isPetitFailure not.
	self assert: result size = 1.
	self assert: result first simpleName = 'read'.