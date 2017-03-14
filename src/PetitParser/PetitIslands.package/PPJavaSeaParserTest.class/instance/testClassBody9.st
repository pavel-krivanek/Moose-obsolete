tests - class
testClassBody9
	self parse: '{
	 private static final int ANNOTATION= 0x00002000;
   
    private static native void registerNatives();
    static {
        registerNatives();
    }

    public String toString() {
        return (isInterface() ? "interface " : (isPrimitive() ? "" : "class "))
            + getName();
    }
}' 
	rule: #classBody.
	
	"debugResult inspect."
	self assert: result isPetitFailure not.
	self assert: result first simpleName = 'registerNatives'.
	self assert: result second simpleName = 'toString'.
