testing
testMethodDeclaration4

	self 
		parse: '
    public void getMethod(String s, int o)
    {
    }
'
	rule: #methodDeclaration