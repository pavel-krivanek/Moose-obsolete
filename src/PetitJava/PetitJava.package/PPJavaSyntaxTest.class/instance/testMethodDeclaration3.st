testing
testMethodDeclaration3

	self 
		parse: '
    public void getMethod(String s, Object ... parameterType)
    {
    }
'
	rule: #methodDeclaration